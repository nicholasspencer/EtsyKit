import Foundation

public protocol URLRequestConvertible {
    var urlRequest: URLRequest? { get }
}

extension URLRequest: URLRequestConvertible {
    public var urlRequest: URLRequest? { return self }
}

extension URLRequest {
    public init?(url: URLConvertible, method: URLRequestMethod, headers: URLRequestHTTPHeader = URLRequestHTTPHeader()) {
        guard let url = url.url else { return nil }

        self.init(url: url)

        httpMethod = method.rawValue
        allHTTPHeaderFields = headers
    }
}

extension URLRequestConvertible where Self: URLConvertible {
    public var urlRequest: URLRequest? {
        guard let url = url else { return nil }
        return URLRequest(url: url)
    }
}

public typealias HTTPHeader = [String: String]
public typealias URLRequestHTTPHeader = HTTPHeader
public typealias URLResponseHTTPHeader = HTTPHeader

extension HTTPHeader {
    mutating func addValue(_ header: HTTPHeader) {
        merge(header) { current, new in "\(current),\(new)" }
    }

    mutating func setValue(_ header: HTTPHeader) {
        merge(header) { _, new in new }
    }
}

public protocol HTTPHeaderConvertible {
    func header(value: String) -> HTTPHeader
}

extension HTTPHeaderConvertible where Self: RawRepresentable, RawValue == String {
    func header(value: String) -> HTTPHeader {
        return [self.rawValue: value]
    }
}

public enum URLRequestMethod: String {
    case get = "GET"
    case put = "PUT"
    case post = "POST"
    case delete = "DELETE"
}