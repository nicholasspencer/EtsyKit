## SPM
.PHONY: xcode

etsy_swift:
	swift build --target EtsySwift

etsy_stencil:
	swift build --target EtsyStencil

xcode:
	swift package generate-xcode

## Etsy Data Generation
.PHONY: types type_names type_json

ApiMethodResponse=Data/ApiMethod.response.json
ApiTypeNames=Data/ApiTypeNames.json
ApiTypeInformationLocation=Data/TypeJSON
GeneratedDirectory=Sources/EtsySwift/Generated


type_names:
	bin/collect_type_names.sh $(ApiMethodResponse) '[null,"Array","Collection","CollectionListing","Dict","Int","Page","PageImage","String","Variations_PropertySet","Variations_PropertySetOption","Variations_PropertySetOptionModifier","array"]' > $(ApiTypeNames)

type_properties_json:
	bin/scrape_types.sh $(ApiTypeNames) $(ApiTypeInformationLocation)

type_structs:
	swift run swiftgen json -p ~/Development/Etsy.swift/Templates/EtsyStencil/EtsyType.stencil Data/TypeJSON/

types: type_names type_properties_json
	swift run swiftgen json -p ~/Development/Etsy.swift/Templates/EtsyStencil/EtsyType.stencil Data/TypeJSON/ > $(GeneratedDirectory)/Types.generated.swift
## House keeping
.PHONY: clean

clean:
	rm $(ApiTypeInformationLocation)/*.json