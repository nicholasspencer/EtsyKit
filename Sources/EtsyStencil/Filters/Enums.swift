import Foundation
import StencilSwiftKit

public extension Filter {
    enum Enums {
        case `enum`(values: String)
    }
}

public extension Filter.Enums {
    static func `enum`(_: Any?, arguments _: [Any?]) throws -> Any? {
        return nil
    }
}
