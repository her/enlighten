" Enlighten - Color for everybody
" Maintainer: Melanie Berkley <http://berkley.io>
" Last Change: 2019 Sep 22
" License: BSD-2-Clause

" Initialize Enlighten
hi clear
if exists("syntax_on")
    syntax reset
endif
let colors_name = "enlighten"

" Allow highlighting of Operators
autocmd FileType * call <SID>def_base_syntax()
function! s:def_base_syntax()
  if &ft =~ 'help\|netrw'
      return
  endif
  syntax match commonOperator "\(+\|=\|-\|\^\|\*\)"
  syntax match baseDelimiter ","
endfunction
"===============================================================================
" Highlight groups

highlight commonOperator ctermfg=4
highlight baseDelimiter ctermfg=4

highlight Comment        ctermfg=7
highlight Constant       ctermfg=1
highlight Identifier     ctermfg=6
highlight Statement      ctermfg=3
highlight PreProc        ctermfg=5
highlight Type           ctermfg=2
highlight Special        ctermfg=5
highlight Underlined     ctermfg=5 cterm=underline
highlight Ignore         ctermfg=7
highlight Error          ctermfg=7 ctermbg=1
highlight ErrorMsg       ctermfg=7 ctermbg=1
highlight ModeMsg        cterm=bold
highlight MoreMsg        ctermfg=2
highlight WarningMsg     ctermfg=1
highlight Todo           ctermfg=0 ctermbg=3
highlight LineNr         ctermfg=8
highlight ColorColumn    ctermfg=8 ctermbg=7
highlight Folded         ctermfg=8 ctermbg=7
highlight FoldColumn     ctermfg=8 ctermbg=7
highlight SignColumn     ctermfg=NONE ctermbg=NONE
highlight CursorColumn   ctermbg=7
highlight CursorLine     cterm=underline
highlight CursorLineNr   ctermfg=3
highlight Cursor         ctermfg=0
highlight CursorIM       ctermfg=0
highlight StatusLine     ctermfg=0 ctermbg=7 cterm=bold
highlight StatusLineNC   ctermfg=8 ctermbg=7
highlight VertSplit      ctermfg=8 ctermbg=7
highlight Conceal        ctermfg=7 ctermbg=7
highlight DiffAdd        ctermfg=0 ctermbg=2
highlight DiffChange     ctermfg=0 ctermbg=3
highlight DiffDelete     ctermfg=0 ctermbg=1
highlight DiffText       ctermfg=0 ctermbg=11 cterm=bold
highlight Directory      ctermfg=4
highlight IncSearch      cterm=reverse
highlight MatchParen     ctermbg=14
highlight NonText        ctermfg=4
highlight Pmenu          ctermfg=0 ctermbg=7
highlight PmenuSel       ctermfg=7 ctermbg=0
highlight PmenuSbar      ctermfg=8
highlight PmenuThumb     ctermfg=0
highlight WildMenu       ctermfg=0 ctermbg=3
highlight Question       ctermfg=2
highlight Search         ctermfg=0 ctermbg=11
highlight SpecialKey     ctermfg=4
highlight SpellCap       ctermfg=8 ctermbg=7
highlight SpellBad       ctermfg=1
highlight SpellLocal     ctermfg=6
highlight SpellRare      ctermfg=5
highlight TabLine        ctermfg=0 ctermbg=7 cterm=underline
highlight TabLineFill    ctermfg=0
highlight TabLineSel     cterm=bold
highlight Title          ctermfg=5
highlight Visual         cterm=inverse ctermbg=NONE


"===============================================================================
" Syntax Group Name

"hi clear Comment | hi link Comment BrightMagenta

"hi clear Constant | hi link Constant Magenta
"String
"Character
"Number
"Boolean
"Float

"hi clear Identifier | hi link Identifier Blue
"Function

"hi clear Statement | hi link Statement Blue
"Conditional
"Repeat
"Label
"Operator
"Keyword
"Exception

"hi clear PreProc | hi link PreProc Black
"Include
"Define
"Macro
"PreCondit

"hi clear Type | hi link Type Green
"StorageClass
"Structure
"Typedef
"Special

"hi clear Special | hi link Special Magenta
"SpecialChar
"Tag
"Delimiter
"SpecialComment
"Debug

"hi clear Underlined | hi link Underlined UnderlineBlue
"hi Ignore

"===============================================================================
" Languages

" Ruby

highlight rubyInclude ctermfg=4
"hi link rubyModule Include
highlight rubyClass ctermfg=4
highlight rubyMacro ctermfg=4
"hi link rubyAttribute Include

"rubyPseudoVariable

"hi link rubyPseudoVariable Blue
highlight rubyDefine ctermfg=12
"hi link rubyFunction Function
"hi link rubyConstant Constant

highlight rubySymbol ctermfg=5
"hi link rubyConditional Conditional
"hi link rubyException Exception
"hi link rubyControl Repeat

"rubyDoBlock
"rubyBlockParameter

"hi link rubyBlockParameter Black
highlight rubyString ctermfg=5
highlight rubyStringDelimiter ctermfg=1
"hi link rubyInterpolationDelimiter String
"hi link rubyInteger Number
"hi link rubyFloat Float
highlight rubyComment ctermfg=4
highlight rubyTodo ctermfg=0 ctermbg=11 cterm=bold
"hi link rubyAssertion Statement

"hi rubyPseudoVariable

"hi rubyKeyword
"hi rubyInstanceVariable
"hi rubyAccess
"hi rubyCurlyBlockDelimiter
"hi rubyArrayDelimiter

"hi rubyCurlyBlock
"hi rubyMethodBlock
"hi rubyLocalVariableOrMethod

"hi rubyRepeat
"hi rubyExceptional

"hi link rubyBoolean Boolean

" Python
"hi pythonImport
"hi pythonExceptions
"hi pythonException
"hi pythonInclude
"hi pythonStatement
"hi pythonConditional
"hi pythonRepeat
"hi pythonFunction
"hi pythonPreCondit
"hi pythonExClass
"hi pythonOperator
"hi pythonBuiltin
"hi pythonDecorator
"hi pythonString
"hi pythonEscape
"hi pythonStrFormatting
"hi pythonBoolean
"hi pythonExClass
"hi pythonBytesEscape
"hi pythonDottedName
"hi pythonStrFormat

"" Javascript
"hi javaScriptBraces
"hi javaScriptParens
"hi javaScriptIdentifier
"hi javaScriptFunction
"hi javaScriptConditional
"hi javaScriptRepeat
"hi javaScriptBoolean
"hi javaScriptNumber
"hi javaScriptMember
"hi javaScriptReserved
"hi javascriptNull
"hi javascriptGlobal
"hi javascriptStatement
"hi javaScriptMessage
"hi javaScriptMember
"
"" JSON
"hi jsonKeyword
"hi jsonString
"hi jsonQuote
"hi jsonNoise
"hi jsonKeywordMatch
"hi jsonBraces
"hi jsonNumber
"hi jsonNull
"hi jsonBoolean
"hi jsonCommentError

" SQL
"hi sqlStatement
"hi sqlType
"hi sqlKeyword
"hi sqlOperator
"hi sqlSpecial
"hi mysqlVariable
"hi mysqlType
"hi mysqlKeyword
"hi mysqlOperator
"hi mysqlSpecial

"" YAML
"hi yamlBlockMappingKey
"hi yamlKeyValueDelimiter
"hi yamlBlockCollectionItemStart

"" XML
"hi xmlProcessingDelim
"hi xmlString
"hi xmlEqual
"hi xmlAttrib
"hi xmlAttribPunct
"hi xmlTag
"hi xmlTagName
"hi xmlEndTag
"hi xmlNamespace

" HTML
"hi htmlTitle
"hi htmlH1
"hi htmlH2
"hi htmlH3
"hi htmlH4
"hi htmlTag
"hi htmlTagName
"hi htmlArg
"hi htmlEndTag
"hi htmlString
"hi htmlScriptTag
"hi htmlBold
"hi htmlItalic
"hi htmlBoldItalic
"hi htmlTagN
"hi htmlSpecialTagName
"hi htmlComment
"hi htmlCommentPart

" CSS
"hi cssIdentifier
"hi cssPositioningProp
"hi cssNoise
"hi cssBoxProp
"hi cssTableAttr
"hi cssPositioningAttr
"hi cssValueLength
"hi cssFunctionName
"hi cssUnitDecorators
"hi cssColor
"hi cssBraces
"hi cssBackgroundProp
"hi cssTextProp
"hi cssDimensionProp
"hi cssClassName

" Markdown
"hi markdownHeadingRule
"hi markdownH1
"hi markdownH2
"hi markdownBlockquote
"hi markdownCodeBlock
"hi markdownCode
"hi markdownLink
"hi markdownUrl
"hi markdownLinkText
"hi markdownLinkTextDelimiter
"hi markdownLinkDelimiter
"hi markdownCodeDelimiter
"hi mkdCode
"hi mkdLink
"hi mkdURL
"hi mkdString
"hi mkdBlockQuote
"hi mkdLinkTitle
"hi mkdDelimiter
"hi mkdRule

"" Shell
"hi bashStatement
"hi shDerefVar
"hi shDerefSimple
"hi shFunction
"hi shStatement
"hi shLoop
"hi shQuote
"hi shCaseEsac
"hi shSnglCase
"hi shFunctionOne
"hi shCase
"hi shSetList

" vim script
"hi link vimUserFunc Function
"hi link vimFunction Function
"hi link vimOperParen Normal
"hi link vimVar Normal

" GitGutter
highlight!link GitGutterAdd BrightGreen
highlight!link GitGutterChange BrightBlack
highlight!link GitGutterDelete BrightRed
highlight!link GitGutterChangeDelete BrightMagenta

" netrw
"hi netrwVersion
"hi netrwList
"hi netrwHidePat
"hi netrwQuickHelp
"hi netrwHelpCmd
"hi netrwDir
"hi netrwClassify
"hi netrwExe
"hi netrwSuffixes
"hi netrwTreeBar
"hi link netrwTreeBar Black
