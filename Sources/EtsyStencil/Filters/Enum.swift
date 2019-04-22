import Foundation
import StencilSwiftKit

public enum Enum {
    case `enum`(values: String)
}

extension Filter {
    static func `enum`(_ value: Any?, arguments: [Any?]) throws -> Any? {
        return nil
    }
}