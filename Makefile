## SPM
.PHONY: etsy_stencil etsy_swift xcode

etsy_stencil:
	swift build --target EtsyStencil

etsy_swift:
	swift build --target EtsySwift

xcode:
	swift package generate-xcode

## Etsy Data Generation
.PHONY: type_names type_json type_structs types

ApiMethodResponse=Data/ApiMethod.response.json
ApiTypeNames=Data/ApiTypeNames.json
ApiTypeInformationLocation=Data/TypeJSON/

scrape: type_names type_properties

type_names:
	bin/scrape_type_names.sh > $(ApiTypeNames)

type_properties:
	bin/scrape_types.sh $(ApiTypeNames) $(ApiTypeInformationLocation)

type_structs:
	swift run swiftgen json -p ~/Development/Etsy.swift/Templates/EtsyStencil/EtsyType.stencil $(ApiTypeInformationLocation) > Sources/EtsySwift/Types.swift \
	& sourcery

types: scrape type_structs

## House keeping
.PHONY: clean

clean:
	rm $(ApiTypeInformationLocation)/*.json