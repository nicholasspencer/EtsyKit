.PHONY: xcode

xcode:
	swift package generate-xcode

.PHONY: type_names

type_names:
	bin/collect_type_names.sh Data/ApiMethod.response.json '[null,"Array","Collection","CollectionListing","Dict","Int","Page","PageImage","String","Variations_PropertySet","Variations_PropertySetOption","Variations_PropertySetOptionModifier","array"]' > Data/TypeNames.json
