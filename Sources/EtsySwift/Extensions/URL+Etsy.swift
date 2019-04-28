import Foundation

extension URL {
    static var baseURLString: String = "https://openapi.etsy.com/v2/"
    static var baseURL: URL? = URL(string: URL.baseURLString)
}
