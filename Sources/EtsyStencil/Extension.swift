import Stencil
import StencilSwiftKit

public extension Stencil.Extension {
    func registerEtsyStencil() {
        registerFilters()
        registerTags()
    }
}

private extension Stencil.Extension {
    func registerFilters() {
        registerFilter("etsyType", filter: Filter.Types.etsyType)
    }

    func registerTags() {}
}
