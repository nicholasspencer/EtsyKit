## SPM
.PHONY: etsy_stencil etsy_swift xcode

etsy_stencil:
	swift build --target EtsyStencil

etsy_swift:
	swift build --target EtsySwift

xcode:
	swift package generate-xcode

## Etsy Data Generation
.PHONY: generate type_names type_json type_structs sourcery types

ApiMethodResponse=Data/ApiMethod.response.json
ApiTypeNames=Data/ApiTypeNames.json
ApiTypeInformationLocation=Data/TypeJSON/
TemplatesDirectory=Templates/EtsyStencil/
EtsySwiftGeneratedDirectory=Sources/EtsySwift/Generated

scrape: type_names type_properties

type_names:
	bin/scrape_type_names.sh > $(ApiTypeNames)

type_properties:
	bin/scrape_types.sh $(ApiTypeNames) $(ApiTypeInformationLocation)

type_structs:
	swift run swiftgen json -p $(TemplatesDirectory)/EtsyType.stencil $(ApiTypeInformationLocation) > Sources/EtsySwift/Generated/SwiftGen/Types.generated.swift

sourcery:
	sourcery

generate: type_structs sourcery  etsy_swift

types: scrape generate

## House keeping
.PHONY: clean

clean:
	rm $(ApiTypeInformationLocation)/*.json \
	& rm -r $(EtsySwiftGeneratedDirectory)/**/*.generated.swift \
	& swift package clean

format:
	swift run swiftformat .

lint:
	swift run swiftlint autocorrect --path Sources/