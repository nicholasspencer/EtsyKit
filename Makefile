.PHONY: xcode

xcode:
	swift package generate-xcode

.PHONY: types type_names type_json

ApiMethodResponse=Data/ApiMethod.response.json
ApiTypeNames=Data/ApiTypeNames.json
ApiTypeInformationLocation=Data/TypeJSON

type_names:
	bin/collect_type_names.sh $(ApiMethodResponse) '[null,"Array","Collection","CollectionListing","Dict","Int","Page","PageImage","String","Variations_PropertySet","Variations_PropertySetOption","Variations_PropertySetOptionModifier","array"]' > $(ApiTypeNames)

type_json:
	bin/scrape_types.sh $(ApiTypeNames) $(ApiTypeInformationLocation)

types: type_names type_json