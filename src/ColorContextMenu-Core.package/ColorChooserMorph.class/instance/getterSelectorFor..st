private
getterSelectorFor: attribute

	^ ('get{1}:'  format: {attribute capitalized}) asSymbol