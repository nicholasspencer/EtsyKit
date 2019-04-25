ApiMethodResponse=Data/ApiMethod.response.json
ApiTypeNames=Data/ApiTypeNames.json
ApiTypeInformationLocation=Data/TypeJSON/
TemplatesDirectory=Templates/EtsyStencilKit/
EtsySwiftGeneratedDirectory=Sources/EtsyTypeKit/

all: etsy_stencil_kit types etsy_type_kit etsy_swift

## SPM
.PHONY: etsy_stencil_kit etsy_swift etsy_type_kit xcode 

etsy_stencil_kit:
	@swift build --target EtsyStencilKit

etsy_swift:
	@swift build --target EtsySwift

etsy_type_kit:
	@swift build --target EtsyTypeKit

xcode:
	@swift package generate-xcode

## Etsy Data Generation
.PHONY: generate type_names type_json type_structs sourcery types

scrape: type_names type_properties

type_names:
	@bin/scrape_type_names.sh > $(ApiTypeNames)

type_properties:
	@bin/scrape_types.sh $(ApiTypeNames) $(ApiTypeInformationLocation)

type_objects:
	@swift run swiftgen json -p $(TemplatesDirectory)/EtsyTypeKit/Type.stencil $(ApiTypeInformationLocation) > $(EtsySwiftGeneratedDirectory)Type.swift

sourcery:
	@sourcery

generate: type_objects sourcery

types: scrape generate

## House keeping
.PHONY: clean format lint

clean:
	@rm $(ApiTypeInformationLocation)*.json
	@rm -r $(EtsySwiftGeneratedDirectory)**/*.generated.swift
	@swift package clean

format:
	@swift run swiftformat .

lint:
	@swift run swiftlint autocorrect --path Sources/