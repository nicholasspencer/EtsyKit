import Foundation

public protocol URLRequestConvertible {
    var urlRequest: URLRequest? { get }
    var urlRequestMethod: URLRequestMethod { get }
    var urlRequestHeaders: URLRequestHeader { get }
}

extension URLRequest: URLRequestConvertible {
    public var urlRequest: URLRequest? { return self }
    public var urlRequestMethod: URLRequestMethod { return URLRequestMethod(rawValue: httpMethod ?? "GET") ?? .get }
    public var urlRequestHeaders: URLRequestHeader { return allHTTPHeaderFields ?? URLRequestHeader() }
}

extension URLRequest {
    public init?(url: URLConvertible, method: URLRequestMethod, headers: URLRequestHeader = URLRequestHeader()) {
        guard let url = url.url else { return nil }

        self.init(url: url)

        httpMethod = method.rawValue
        allHTTPHeaderFields = headers
    }
}

extension URLRequestConvertible where Self: URLConvertible {
    public var urlRequest: URLRequest? {
        guard let url = url else { return nil }
        var request = URLRequest(url: url)
        request.addValue(headers: urlRequestHeaders)
        request.httpMethod = urlRequestMethod.rawValue
        return request
    }

    public var urlRequestMethod: URLRequestMethod {
        return .get
    }

    public var urlRequestHeaders: URLRequestHeader {
        return URLRequestHeader()
    }
}

public typealias URLRequestHeader = [String: String]

extension URLRequestHeader {
    mutating func addValue(_ requestHeader: URLRequestHeader) {
        merge(requestHeader) { current, new in "\(current),\(new)" }
    }

    mutating func setValue(_ requestHeader: URLRequestHeader) {
        merge(requestHeader) { _, new in new }
    }
}

public protocol URLRequestHeaderConvertible {
    func requestHeader(value: String) -> URLRequestHeader
}

extension URLRequestHeaderConvertible where Self: RawRepresentable, RawValue == String {
    func requestHeader(value: String) -> URLRequestHeader {
        return [self.rawValue: value]
    }
}

public enum URLRequestMethod: String {
    case get = "GET"
    case put = "PUT"
    case post = "POST"
    case delete = "DELETE"
}