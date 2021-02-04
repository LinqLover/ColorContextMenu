toolbuilder
frameForFooter

	^  LayoutFrame
		fractions: (0 @ 1 corner: 1 @ 1)
		offsets: (0 @ self footerHeight negated corner: 0 @ 0)