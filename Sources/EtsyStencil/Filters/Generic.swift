import Foundation
import Stencil
import StencilSwiftKit

public enum Generic {
    case array(type: Type.Type)
    case map(keyType: Type.Type, valueType: Type.Type)
}