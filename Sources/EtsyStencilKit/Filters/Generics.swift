import Foundation
import StencilSwiftKit

public extension Filter {
    enum Generics {
        case array(type: Types.Type)
        case map(keyType: Types.Type, valueType: Types.Type)
    }
}
