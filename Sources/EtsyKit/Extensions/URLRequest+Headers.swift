import Foundation

public extension URLRequest {
    mutating func addValue(headers: URLRequestHTTPHeader) {
        for (key, value) in headers {
            addValue(value, forHTTPHeaderField: key)
        }
    }

    mutating func setValue(headers: URLRequestHTTPHeader) {
        for (key, value) in headers {
            setValue(value, forHTTPHeaderField: key)
        }
    }
}