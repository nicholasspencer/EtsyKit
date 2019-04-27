import Foundation

public protocol URLConvertible {
    var string: String? { get }
    var url: URL? { get }
}

extension String: URLConvertible {
    public var string: String? {
        return self
    }

    public var url: URL? {
        return Foundation.URL(string: self)
    }
}

extension URL: URLConvertible {
    public var string: String? {
        return absoluteString
    }

    public var url: URL? {
        return self
    }
}

extension URLComponents: URLConvertible {}

public protocol URLQueryItemConvertible {
    func queryItem(value: String) -> URLQueryItem
}

extension URLQueryItemConvertible where Self: RawRepresentable, RawValue == String {
    func queryItem(value: String) -> URLQueryItem {
        return URLQueryItem(name: self.rawValue, value: value)
    }
}