ApiMethodResponse=Data/ApiMethod.response.json
ApiTypeNames=Data/ApiTypeNames.json
ApiTypeInformationDirectory=Data/TypeJSON/
TemplatesDirectory=Templates/EtsyStencilKit/
EtsySwiftGeneratedDirectory=Sources/EtsyTypeKit/

all: types etsy_type_kit etsy_kit

## SPM
.PHONY: etsy_kit etsy_type_kit xcode 

etsy_kit:
	@swift build --target EtsyKit

etsy_type_kit:
	@swift build --target EtsyTypeKit

xcode:
	@swift package generate-xcode

test:
	@swift test --parallel --filter EtsyKitTests

## Etsy Data Generation
.PHONY: generate type_names type_json type_structs sourcery types

scrape: type_names type_properties

type_names:
	@bin/scrape_type_names.sh > $(ApiTypeNames)

type_properties:
	@bin/scrape_types.sh $(ApiTypeNames) $(ApiTypeInformationDirectory)

type_objects:
	@swift run swiftgen json -p $(TemplatesDirectory)/EtsyTypeKit/Type.stencil $(ApiTypeInformationDirectory) > $(EtsySwiftGeneratedDirectory)Type.swift

sourcery:
	@sourcery

generate: type_objects sourcery

types: scrape generate

## House keeping
.PHONY: clean format lint

clean:
	@rm $(ApiTypeInformationDirectory)*.json
	@rm -r $(EtsySwiftGeneratedDirectory)**/*.generated.swift
	@swift package clean

format:
	@swift run swiftformat .

lint:
	@swift run swiftlint autocorrect --path Sources/