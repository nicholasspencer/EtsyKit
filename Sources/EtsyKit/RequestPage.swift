import Foundation

public struct RequestPage {
    var page = 0
    var offset = 0
    var limit = 25

    var queryItems: [URLQueryItem] {
        return [
            URLQueryItem(name: "page", value: "\(page)"),
            URLQueryItem(name: "offset", value: "\(offset)"),
            URLQueryItem(name: "limit", value: "\(limit)"),
        ]
    }
}
