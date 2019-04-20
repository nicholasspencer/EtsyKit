
import Foundation

enum Credentials {
    case api(key: String, secret: String)
    case user(username: String, password: String)
}
