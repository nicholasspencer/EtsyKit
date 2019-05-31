import Foundation

public protocol URLConvertible {
    var urlString: String? { get }
    var url: URL? { get }
}

extension String: URLConvertible {
    public var urlString: String? {
        return self
    }

    public var url: URL? {
        return URL(string: self)
    }
}

extension URL: URLConvertible {
    public var urlString: String? {
        return absoluteString
    }

    public var url: URL? {
        return self
    }
}

extension URLComponents: URLConvertible {
    public var urlString: String? {
        return string
    }
}

public protocol URLQueryItemConvertible {
    func queryItem(value: String) -> URLQueryItem
}

extension URLQueryItemConvertible where Self: RawRepresentable, RawValue == String {
    func queryItem(value: String) -> URLQueryItem {
        return URLQueryItem(name: rawValue, value: value)
    }
}
