" Enlighten - A Color Scheme
" Maintainer: Melanie Berkley <http://berkley.io>
" Last Change: 2018 Mar 26
" License: BSD-2-Clause

"
"
" s:Color('HighlightGroup',
" \ s:gui_foreground, s:gui_background,
" \ s:term_foreground, s:term_background,
" \ 'display_mode')
"
" Print out colors as you mix them
" :echohl HighLightGroup | echo 'The quick brown fox jumps over the lazy dog.'
"

" Initialize Enlighten
hi clear
if exists("syntax_on")
    syntax reset
endif
let colors_name = "enlighten"

" GUI colors
let s:g_black = "#000000"
let s:g_red = "#C73461"
let s:g_green = "#388123"
let s:g_yellow = "#ED6237"
let s:g_blue = "#1F5EBE"
let s:g_magenta = "#4A34A2"
let s:g_cyan = "#367E7F"
let s:g_white = "#A3AFB6"
let s:g_bright_black = "#666666"
let s:g_bright_red = "#C30500"
let s:g_bright_green = "#76BA67"
let s:g_bright_yellow = "#F3AB3D"
let s:g_bright_blue = "#5BA5EF"
let s:g_bright_magenta = "#EC5281"
let s:g_bright_cyan = "#4DADAF"
let s:g_bright_white = "#F5F5F5"

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
  syntax match commonOperator "\(+\|=\|-\|\^\|\*\)"
  syntax match baseDelimiter ","
  hi link commonOperator Blue
  hi link baseDelimiter Black
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

" Background colors
call s:Color("bgBlack", "NONE", s:g_black, "NONE", s:black)
call s:Color("bgRed", "NONE", s:g_red, "NONE", s:red)
call s:Color("bgGreen", "NONE", s:g_green, "NONE", s:green)
call s:Color("bgYellow", "NONE", s:g_yellow, "NONE", s:yellow)
call s:Color("bgBlue", "NONE", s:g_blue, "NONE", s:blue)
call s:Color("bgMagenta", "NONE", s:g_magenta, "NONE", s:magenta)
call s:Color("bgCyan", "NONE", s:g_cyan, "NONE", s:cyan)
call s:Color("bgWhite", "NONE", s:g_white, "NONE", s:white)
call s:Color("bgBrightBlack", "NONE", s:g_bright_black, "NONE", s:bright_black)
call s:Color("bgBrightRed", "NONE", s:g_bright_red, "NONE", s:bright_red)
call s:Color("bgBrightGreen", "NONE", s:g_bright_green, "NONE", s:bright_green)
call s:Color("bgBrightYellow", "NONE", s:g_bright_yellow, "NONE", s:bright_yellow)
call s:Color("bgBrightBlue", "NONE", s:g_bright_blue, "NONE", s:bright_blue)
call s:Color("bgBrightMagenta", "NONE", s:g_bright_magenta, "NONE", s:bright_magenta)
call s:Color("bgBrightCyan", "NONE", s:g_bright_cyan, "NONE", s:bright_cyan)
call s:Color("bgBrightWhite", "NONE", s:g_bright_white, "NONE", s:bright_white)

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
call s:Color("BrightGreenOnGreen", s:g_green, s:g_bright_green, s:green, s:bright_green, "bold")
call s:Color("BrightRedOnBrightMagenta", s:g_bright_red, s:g_bright_magenta, s:bright_red, s:bright_magenta, "bold")
call s:Color("BrightWhiteOnBrightRed", s:g_bright_white, s:g_bright_red, s:bright_white, s:bright_red)
call s:Color("BrightWhiteOnBrightBlack", s:g_bright_white, s:g_bright_black, s:bright_white, s:bright_black)
call s:Color("BrightWhiteOnBrightBlue", s:g_bright_white, s:g_bright_blue, s:bright_white, s:bright_blue)
call s:Color("BrightWhiteOnBrightWhite", s:g_bright_white, s:g_bright_white, s:bright_white, s:bright_white)
call s:Color("BrightWhiteOnWhite", s:g_bright_white, s:g_white, s:bright_white, s:white)
call s:Color("BrightWhiteOnYellow", s:g_bright_white, s:g_yellow, s:bright_white, s:yellow)
call s:Color("BrightWhiteOnRed", s:g_bright_white, s:g_red, s:bright_white, s:red)
call s:Color("BlackOnYellow", s:g_black, s:g_yellow, s:black, s:yellow, "bold")
call s:Color("BlackOnBrightYellow", s:g_black, s:g_bright_yellow, s:black, s:bright_yellow, "bold")
call s:Color("WhiteOnWhite", s:g_white, s:g_white, s:white, s:white)
call s:Color("BlueOnWhite", s:g_blue, s:g_white, s:blue, s:white,"bold")

call s:Color("UnderlineBlack", s:g_black, "NONE", s:black, "NONE", "underline")
call s:Color("UnderlineBrightBlack", s:g_bright_black, "NONE", s:bright_black, "NONE", "underline")
call s:Color("UnderlineRed", s:g_red, "NONE", s:red, "NONE", "underline")
call s:Color("UnderlineGreen", s:g_green, "NONE", s:green, "NONE", "underline")
call s:Color("UnderlineYellow", s:g_yellow, "NONE", s:yellow, "NONE", "underline")
call s:Color("UnderlineBlue", s:g_blue, "NONE", s:blue, "NONE", "underline")
"===============================================================================
" Highlight groups

hi clear ColorColumn | hi link ColorColumn bgWhite
hi clear Conceal | hi link Conceal White
hi clear Cursor | hi link Cursor bgWhite
hi clear CursorIM | hi link CursorIM bgWhite
hi clear CursorColumn | hi link CursorColumn bgWhite
hi clear CursorLine | hi link CursorLine bgWhite
hi clear Directory | hi link Directory Blue
hi clear DiffAdd | hi link DiffAdd BrightGreenOnGreen
hi clear DiffChange | hi link DiffChange BlackOnBrightYellow
hi clear DiffDelete | hi link DiffDelete BrightRedOnBrightMagenta
hi clear DiffText | hi link DiffText BlackOnYellow
hi clear EndOfBuffer | hi link EndOfBuffer White
hi clear ErrorMsg | hi link ErrorMsg BrightWhiteOnBrightRed
hi clear VertSplit | hi link VertSplit Black
hi clear Folded | hi link Folded BrightWhiteOnBrightBlack
hi clear FoldColumn | hi link FoldColumn BoldBrightBlue
hi clear SignColumn | hi link SignColumn BrightWhite
hi clear IncSearch | hi link IncSearch BrightWhiteOnBrightBlue
hi clear LineNr | hi link LineNr BrightBlack
hi clear CursorLineNr | hi link CursorLineNR Black
hi clear MatchParen | hi link MatchParen BrightWhiteOnBrightBlue
hi clear ModeMsg | hi link ModeMsg Black
hi clear MoreMsg | hi link MoreMsg Green
hi clear NonText | hi link NonText White
hi clear Normal | hi link Normal Black
hi clear Pmenu | hi link Pmenu Black
hi clear PmenuSel | hi link PmenuSel BrightWhiteOnBrightBlue
hi clear PmenuSbar | hi link PmenuSbar BrightWhiteOnBrightWhite
hi clear PmenuThumb | hi link PmenuThumb WhiteOnWhite
hi clear Question | hi link Question Green
hi clear QuickFixLine | hi link QuickFixLine Magenta
hi clear Search | hi link Search BrightWhiteOnBrightBlue
hi clear SpecialKey | hi link SpecialKey White
hi clear SpellBad | hi link SpellBad UnderlineRed
hi clear SpellCap | hi link SpellCap UnderlineGreen
hi clear SpellLocal | hi link SpellLocal UnderlineYellow
hi clear SpellRare | hi link SpellRare UnderlineYellow
hi clear StatusLine | hi link StatusLine BoldBlue
hi clear StatusLineNC | hi link StatusLineNC White
hi clear StatusLineTerm | hi link StatusLineTerm Blue
hi clear StatusLineTermNC | hi link StatusLineTermNC White
hi clear TabLine | hi link TabLine bgWhite
hi clear TabLineFill | hi link TabLineFill bgWhite
hi clear TabLineSel | hi link TabLineSel Black
hi clear Title | hi link Title Magenta
hi clear Visual | hi link Visual bgWhite
hi clear VisualNOS | hi link VisualNOS bgWhite
hi clear WarningMsg | hi link WarningMsg BrightWhiteOnYellow
hi clear WildMenu | hi link WildMenu BrightWhiteOnBrightBlue
hi clear Todo | hi link Todo BrightWhiteOnRed
hi clear Error | hi link Error BrightWhiteOnBrightRed

"===============================================================================
" Syntax Group Name

hi clear Comment | hi link Comment BrightMagenta

hi clear Constant | hi link Constant Magenta
"String
"Character
"Number
"Boolean
"Float

hi clear Identifier | hi link Identifier Blue
"Function

hi clear Statement | hi link Statement Blue
"Conditional
"Repeat
"Label
"Operator
"Keyword
"Exception

hi clear PreProc | hi link PreProc Black
"Include
"Define
"Macro
"PreCondit

hi clear Type | hi link Type Green
"StorageClass
"Structure
"Typedef
"Special

hi clear Special | hi link Special Magenta
"SpecialChar
"Tag
"Delimiter
"SpecialComment
"Debug

hi clear Underlined | hi link Underlined UnderlineBlue
"hi Ignore

"===============================================================================
" Languages

"" Ruby

hi link rubyInclude PreProc
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
hi link rubyString String
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
hi link GitGutterAdd BrightGreen
hi link GitGutterChange Yellow
hi link GitGutterDelete BrightRed
hi link GitGutterChangeDelete Magenta

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
hi link netrwTreeBar Black
