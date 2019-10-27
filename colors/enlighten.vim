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

" GUI colors
let s:g_black = "#000000"
let s:g_red = "#B83520"
let s:g_green = "#268800"
let s:g_yellow = "#C1512C"
let s:g_blue = "#2C69EE"
let s:g_magenta = "#722ECF"
let s:g_cyan = "#408065"
let s:g_white = "#A3AFB6"
let s:g_bright_black = "#666666"
let s:g_bright_red = "#D84D62"
let s:g_bright_green = "#5EB055"
let s:g_bright_yellow = "#DFC240"
let s:g_bright_blue = "#4D7DEA"
let s:g_bright_magenta = "#C990F8"
let s:g_bright_cyan = "#55B0B2"
let s:g_bright_white = "#FEFBED"

" Terminal colors
let s:black = "0"
let s:red = "1"
let s:green = "2"
let s:yellow = "3"
let s:blue = "4"
let s:magenta = "5"
let s:cyan = "6"
let s:white = "7"
let s:bright_black = "8"
let s:bright_red = "9"
let s:bright_green = "10"
let s:bright_yellow = "11"
let s:bright_blue = "12"
let s:bright_magenta = "13"
let s:bright_cyan = "14"
let s:bright_white = "15"

" s:Color('HighlightGroup',
" \ s:gui_foreground, s:gui_background,
" \ s:term_foreground, s:term_background,
" \ 'display_mode')
function! s:Color(group, g_fg, g_bg, fg, bg, ...)
  if empty(a:0)
    let style = "NONE"
  else
    let style = a:1
  end

  exe "hi " . a:group . " guifg=" . a:g_fg . " guibg=" . a:g_bg
    \ . " ctermfg=" . a:fg
    \ . " ctermbg=" . a:bg
    \ . " gui="     . style
    \ . " cterm="   . style
endfunction

" Allow highlighting of Operators
autocmd FileType * call <SID>def_base_syntax()
function! s:def_base_syntax()
  if &ft =~ 'help\|netrw'
      return
  endif
  syntax match commonOperator "\(+\|=\|-\|\^\|\*\)"
  syntax match baseDelimiter ","
  highlight! link commonOperator Blue
  highlight! link baseDelimiter Blue
endfunction

"===============================================================================
" Foreground colors
call s:Color("Black", s:g_black, "NONE", s:black, "NONE")
call s:Color("Red", s:g_red, "NONE", s:red, "NONE")
call s:Color("Green", s:g_green, "NONE", s:green, "NONE")
call s:Color("Yellow", s:g_yellow, "NONE", s:yellow, "NONE")
call s:Color("Blue", s:g_blue, "NONE", s:blue, "NONE")
call s:Color("Magenta", s:g_magenta, "NONE", s:magenta, "NONE")
call s:Color("Cyan", s:g_cyan, "NONE", s:cyan, "NONE")
call s:Color("White", s:g_white, "NONE", s:white, "NONE")
call s:Color("BrightBlack", s:g_bright_black, "NONE", s:bright_black, "NONE")
call s:Color("BrightRed", s:g_bright_red, "NONE", s:bright_red, "NONE")
call s:Color("BrightGreen", s:g_bright_green, "NONE", s:bright_green, "NONE")
call s:Color("BrightYellow", s:g_bright_yellow, "NONE", s:bright_yellow, "NONE")
call s:Color("BrightBlue", s:g_bright_blue, "NONE", s:bright_blue, "NONE")
call s:Color("BrightMagenta", s:g_bright_magenta, "NONE", s:bright_magenta, "NONE")
call s:Color("BrightCyan", s:g_bright_cyan, "NONE", s:bright_cyan, "NONE")
call s:Color("BrightWhite", s:g_bright_white, "NONE", s:bright_white, "NONE")

" Background colors
call s:Color("bgBlack", "NONE", s:g_black, "NONE", s:black, "NONE")
call s:Color("bgRed", "NONE", s:g_red, "NONE", s:red, "NONE")
call s:Color("bgGreen", "NONE", s:g_green, "NONE", s:green, "NONE")
call s:Color("bgYellow", "NONE", s:g_yellow, "NONE", s:yellow, "NONE")
call s:Color("bgBlue", "NONE", s:g_blue, "NONE", s:blue, "NONE")
call s:Color("bgMagenta", "NONE", s:g_magenta, "NONE", s:magenta, "NONE")
call s:Color("bgCyan", "NONE", s:g_cyan, "NONE", s:cyan, "NONE")
call s:Color("bgWhite", "NONE", s:g_white, "NONE", s:white, "NONE")
call s:Color("bgBrightBlack", "NONE", s:g_bright_black, "NONE", s:bright_black, "NONE")
call s:Color("bgBrightRed", "NONE", s:g_bright_red, "NONE", s:bright_red, "NONE")
call s:Color("bgBrightGreen", "NONE", s:g_bright_green, "NONE", s:bright_green, "NONE")
call s:Color("bgBrightYellow", "NONE", s:g_bright_yellow, "NONE", s:bright_yellow, "NONE")
call s:Color("bgBrightBlue", "NONE", s:g_bright_blue, "NONE", s:bright_blue, "NONE")
call s:Color("bgBrightMagenta", "NONE", s:g_bright_magenta, "NONE", s:bright_magenta, "NONE")
call s:Color("bgBrightCyan", "NONE", s:g_bright_cyan, "NONE", s:bright_cyan, "NONE")
call s:Color("bgBrightWhite", "NONE", s:g_bright_white, "NONE", s:bright_white, "NONE")

" Bold foregound colors
call s:Color("BoldBlack", s:g_black, "NONE", s:black, "NONE", "bold")
call s:Color("BoldRed", s:g_red, "NONE", s:red, "NONE", "bold")
call s:Color("BoldGreen", s:g_green, "NONE", s:green, "NONE", "bold")
call s:Color("BoldYellow", s:g_yellow, "NONE", s:yellow, "NONE", "bold")
call s:Color("BoldBlue", s:g_blue, "NONE", s:blue, "NONE", "bold")
call s:Color("BoldMagenta", s:g_magenta, "NONE", s:magenta, "NONE", "bold")
call s:Color("BoldCyan", s:g_cyan, "NONE", s:cyan, "NONE", "bold")
call s:Color("BoldWhite", s:g_white, "NONE", s:white, "NONE", "bold")
call s:Color("BoldBrightBlack", s:g_bright_black, "NONE", s:bright_black, "NONE", "bold")
call s:Color("BoldBrightRed", s:g_bright_red, "NONE", s:bright_red, "NONE", "bold")
call s:Color("BoldBrightGreen", s:g_bright_green, "NONE", s:bright_green, "NONE", "bold")
call s:Color("BoldBrightYellow", s:g_bright_yellow, "NONE", s:bright_yellow, "NONE", "bold")
call s:Color("BoldBrightBlue", s:g_bright_blue, "NONE", s:bright_blue, "NONE", "bold")
call s:Color("BoldBrightMagenta", s:g_bright_magenta, "NONE", s:bright_magenta, "NONE", "bold")
call s:Color("BoldBrightCyan", s:g_bright_cyan, "NONE", s:bright_cyan, "NONE", "bold")
call s:Color("BoldBrightWhite", s:g_bright_white, "NONE", s:bright_white, "NONE", "bold")

" Bold background colors
call s:Color("bgBoldBlack", "NONE", s:g_black, "NONE", s:black, "bold")
call s:Color("bgBoldRed", "NONE", s:g_red, "NONE", s:red, "bold")
call s:Color("bgBoldGreen", "NONE", s:g_green, "NONE", s:green, "bold")
call s:Color("bgBoldYellow", "NONE", s:g_yellow, "NONE", s:yellow, "bold")
call s:Color("bgBoldBlue", "NONE", s:g_blue, "NONE", s:blue, "bold")
call s:Color("bgBoldMagenta", "NONE", s:g_magenta, "NONE", s:magenta, "bold")
call s:Color("bgBoldCyan", "NONE", s:g_cyan, "NONE", s:cyan, "bold")
call s:Color("bgBoldWhite", "NONE", s:g_white, "NONE", s:white, "bold")
call s:Color("bgBoldBrightBlack", "NONE", s:g_bright_black, "NONE", s:bright_black, "bold")
call s:Color("bgBoldBrightRed", "NONE", s:g_bright_red, "NONE", s:bright_red, "bold")
call s:Color("bgBoldBrightGreen", "NONE", s:g_bright_green, "NONE", s:bright_green, "bold")
call s:Color("bgBoldBrightYellow", "NONE", s:g_bright_yellow, "NONE", s:bright_yellow, "bold")
call s:Color("bgBoldBrightBlue", "NONE", s:g_bright_blue, "NONE", s:bright_blue, "bold")
call s:Color("bgBoldBrightMagenta", "NONE", s:g_bright_magenta, "NONE", s:bright_magenta, "bold")
call s:Color("bgBoldBrightCyan", "NONE", s:g_bright_cyan, "NONE", s:bright_cyan, "bold")
call s:Color("bgBoldBrightWhite", "NONE", s:g_bright_white, "NONE", s:bright_white, "bold")

" Color pairs
call s:Color("BlackOnBrightYellow", s:g_black, s:g_bright_yellow, s:black, s:bright_yellow, "NONE")
call s:Color("BlackOnGreen", s:g_black, s:g_green, s:black, s:green, "NONE")
call s:Color("BlackOnRed", s:g_black, s:g_red, s:black, s:red, "NONE")
call s:Color("BlackOnWhite", s:g_black, s:g_white, s:black, s:white, "NONE")
call s:Color("BlackOnYellow", s:g_black, s:g_yellow, s:black, s:yellow, "NONE")
call s:Color("BrightBlackOnWhite", s:g_bright_black, s:g_white, s:bright_black, s:white, "NONE")
call s:Color("WhiteOnBlack", s:g_white, s:g_black, s:white, s:black, "NONE")
call s:Color("WhiteOnRed", s:g_white, s:g_red, s:white, s:red, "NONE")
call s:Color("WhiteOnWhite", s:g_white, s:g_white, s:white, s:white, "NONE")

call s:Color("WhiteOnBrightBlack", s:g_white, s:g_bright_black, s:white, s:bright_black, "NONE")

call s:Color("BrightWhiteOnBrightBlack", s:g_bright_white, s:g_bright_black, s:bright_white, s:bright_black, "NONE")

call s:Color("BrightWhiteOnBrightBlackBold", s:g_bright_white, s:g_bright_black, s:bright_white, s:bright_black, "bold")

call s:Color("BrightBlackOnBrightWhite", s:g_bright_black, s:g_bright_white, s:bright_black, s:bright_white, "NONE")

" Color pairs with Styles
call s:Color("BlackOnWhiteUnderline", s:g_black, s:g_white, s:black, s:white, "underline")
call s:Color("BlackOnWhiteBold", s:g_black, s:g_white, s:black, s:white, "bold")
call s:Color("BlackOnBrightYellowBold", s:g_black, s:g_bright_yellow, s:black, s:bright_yellow, "bold")

" Foreground colors with Styles
call s:Color("MagentaUnderline", s:g_magenta, "NONE", s:magenta, "NONE", "underline")

" Styles
call s:Color("Bold", "NONE", "NONE", "NONE", "NONE", "bold")
call s:Color("Inverse", "NONE", "NONE", "NONE", "NONE", "inverse")
call s:Color("Reverse", "NONE", "NONE", "NONE", "NONE", "reverse")
call s:Color("Underline", "NONE", "NONE", "NONE", "NONE", "underline")

"===============================================================================
" Highlight groups

if &background == "light"
  highlight! link LineNr         BrightBlack
  highlight! link Comment        BrightBlack
  highlight! link ColorColumn    BrightBlackOnWhite
  highlight! link FoldColumn     BrightBlackOnWhite
  highlight! link Folded         BrightBlackOnWhite
  highlight! link Pmenu          BlackOnWhite
  highlight! link PmenuSel       WhiteOnBlack
  highlight! link SpellCap       BrightBlackOnWhite
  highlight! link StatusLine     BlackOnWhiteBold
  highlight! link StatusLineNC   BrightBlackOnWhite
  highlight! link SignColumn     bgWhite
  highlight! link VertSplit      BrightBlackOnWhite
else
  highlight! link LineNr         BrightBlack
  highlight! link Comment        BrightBlack
  highlight! link ColorColumn    WhiteOnBrightBlack
  highlight! link FoldColumn     WhiteOnBrightBlack
  highlight! link Folded         WhiteOnBrightBlack
  highlight! link Pmenu          BrightWhiteOnBrightBlack
  highlight! link PmenuSel       BrightBlackOnBrightWhite
  highlight! link SpellCap       WhiteOnBrightBlack
  highlight! link StatusLine     BrightWhiteOnBrightBlackBold
  highlight! link StatusLineNC   BrightWhiteOnBrightBlack
  highlight! link SignColumn     bgBrightBlack
  highlight! link VertSplit      BrightWhiteOnBrightBlack
end

highlight! link Conceal        WhiteOnWhite
highlight! link Constant       Red
highlight! link CursorColumn   bgWhite
highlight! link CursorLine     Underline
highlight! link CursorLineNr   Yellow
highlight! link DiffAdd        BlackOnGreen
highlight! link DiffChange     BlackOnYellow
highlight! link DiffDelete     BlackOnRed
highlight! link DiffText       BlackOnBrightYellowBold
highlight! link Directory      Blue
highlight! link Error          WhiteOnRed
highlight! link ErrorMsg       WhiteOnRed
highlight! link Identifier     Cyan
highlight! link Ignore         BrightWhite
highlight! link IncSearch      Reverse
highlight! link MatchParen     bgBrightCyan
highlight! link ModeMsg        Bold
highlight! link MoreMsg        Green
highlight! link NonText        BrightBlue
highlight! link PmenuSbar      BrightBlack
highlight! link PmenuThumb     Black
highlight! link PreProc        Magenta
highlight! link Question       Green
highlight! link Search         BlackOnBrightYellow
highlight! link Special        Magenta
highlight! link SpecialKey     Blue
highlight! link SpellBad       Red
highlight! link SpellLocal     BrightCyan
highlight! link SpellRare      Magenta
highlight! link Statement      Yellow
highlight! link TabLine        BlackOnWhiteUnderline
highlight! link TabLineFill    Reverse
highlight! link TabLineSel     Bold
highlight! link TermCursor     Reverse
highlight! link Title          Magenta
highlight! link Todo           BlackOnBrightYellow
highlight! link Type           Green
highlight! link Underlined     MagentaUnderline
highlight! link Visual         Inverse
highlight! link WarningMsg     Red
highlight! link WildMenu       BlackOnYellow

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

"" Ruby

"hi link rubyInclude PreProc
"hi link rubyModule Include
"hi link rubyClass Include
"hi link rubyAttribute Include

"rubyPseudoVariable

"hi link rubyPseudoVariable Blue
"hi link rubyDefine Define
"hi link rubyFunction Function
"hi link rubyConstant Constant

"rubySymbol

"hi link rubySymbol Blue
"hi link rubyConditional Conditional
"hi link rubyException Exception
"hi link rubyControl Repeat

"rubyDoBlock
"rubyBlockParameter

"hi link rubyBlockParameter Black
"hi link rubyString String
"hi link rubyString String
"hi link rubyStringDelimiter String
"hi link rubyInterpolationDelimiter String
"hi link rubyInteger Number
"hi link rubyFloat Float
"hi link rubyComment Comment
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
"
"" SQL
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
"
"" YAML
"hi yamlBlockMappingKey
"hi yamlKeyValueDelimiter
"hi yamlBlockCollectionItemStart
"
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
"
"" HTML
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
"
"" CSS
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
"
"" Markdown
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
"
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
