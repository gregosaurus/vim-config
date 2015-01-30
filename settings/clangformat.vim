" Clang format
"let g:clang_format#style_options = {
"    \ "AccessModifierOffset": -4,
"    \ "AlignEscapedNewlinesLeft": "false",
"    \ "AlignTrailingComments": "true",
"    \ "AllowAllParametersOfDeclarationOnNextLine": "true",
"    \ "AllowShortFunctionsOnASingleLine": "false",
"    \ "AllowShortIfStatementsOnASingleLine": "false",
"    \ "AllowShortLoopsOnASingleLine": "false",
"    \ "AlwaysBreakBeforeMultilineStrings": "false",
"    \ "AlwaysBreakTemplateDeclarations": "true",
"    \ "BinPackParameters": "false",
"    \ "BreakBeforeBinaryOperators": "false",
"    \ "BreakBeforeBraces": "Allman",
"    \ "BreakConstructorInitializersBeforeComma": "true",
"    \ "ColumnLimit":     80,
"    \ "ConstructorInitializerAllOnOneLineOrOnePerLine": "false",
"    \ "ConstructorInitializerIndentWidth": 0,
"    \ "Cpp11BracedListStyle": "true",
"    \ "DerivePointerBinding": "true",
"    \ "ExperimentalAutoDetectBinPacking": "false",
"    \ "IndentCaseLabels": "false",
"    \ "IndentFunctionDeclarationAfterType": "false",
"    \ "IndentWidth":     4,
"    \ "MaxEmptyLinesToKeep": 1,
"    \ "NamespaceIndentation": "None",
"    \ "ObjCSpaceBeforeProtocolList": "true",
"    \ "PenaltyBreakComment": 60,
"    \ "PenaltyBreakFirstLessLess": 100,
"    \ "PenaltyBreakString": 1000,
"    \ "PenaltyExcessCharacter": 8,
"    \ "PenaltyReturnTypeOnItsOwnLine": 99,
"    \ "PointerBindsToType": "true",
"    \ "SpaceAfterControlStatementKeyword": "true",
"    \ "SpaceBeforeAssignmentOperators": "true",
"    \ "SpaceInEmptyParentheses": "false",
"    \ "SpacesBeforeTrailingComments": 1,
"    \ "SpacesInCStyleCastParentheses": "false",
"    \ "SpacesInParentheses": "false",
"    \ "Standard":        "Cpp11",
"    \ "TabWidth":        4,
"    \ "UseTab":          "Never"}
"
"let g:clang_format#detect_style_file=1
"
"autocmd FileType c,cpp,objc map <buffer><C-f> :ClangFormat<CR>
"autocmd FileType c,cpp,objc imap <buffer><C-f> <ESC>:ClangFormat<CR>i

