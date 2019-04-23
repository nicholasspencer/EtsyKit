import Foundation
import StencilSwiftKit

public enum Enum {
    case `enum`(values: String)
}

extension Filter {
    static func `enum`(_: Any?, arguments _: [Any?]) throws -> Any? {
        return nil
    }
}
