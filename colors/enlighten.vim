" Enlighten - A Color Scheme
" Maintainer: Melanie Berkley <http://berkley.io>
" Version: 1.2.0
" License: BSD-2-Clause

" Initialize Enlighten
set background=light
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="enlighten"

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

" s:Color(options={})
"
" s:Color('HighlightGroup', s:gui_foreground, s:gui_background, s:term_foreground, s:term_background, 'display_mode')
" ex. call s:Color("Normal",   s:g_black,  s:g_white,  s:black,  s:white)
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

" Editor settings
call s:Color("Normal", "NONE", "NONE", "NONE", "NONE")
call s:Color("Cursor", "NONE", "NONE", "NONE", "NONE")
call s:Color("CursorLine", "NONE", "NONE", "NONE", "NONE", "underline")
call s:Color("LineNr", s:g_bright_black, "NONE", s:bright_black, "NONE")
call s:Color("CursorLineNR", s:g_black, "NONE", s:black, "NONE")

" Number Column
call s:Color("CursorColumn", "NONE", s:g_white, "NONE", s:white)
call s:Color("SignColumn", "NONE", s:g_bright_white, "NONE", s:bright_white)
call s:Color("FoldColumn", s:g_blue, s:g_white, s:blue, s:white, "standout" )
call s:Color("Folded", s:g_blue, s:g_white, s:blue, s:white, "standout" )

" Window & Tab Delimeters
call s:Color("VertSplit", s:g_bright_white, s:g_white, s:black, s:bright_white)
call s:Color("ColorColumn", "NONE", s:g_bright_red, "NONE", s:bright_red)
"hi TabLine
"hi TabLineFill
"hi TabLineSel

" File Traversal
call s:Color("Directory", s:g_blue, "NONE", s:blue, "NONE")
call s:Color("Search", s:g_bright_white, s:g_bright_blue, s:bright_white, s:bright_blue)
call s:Color("IncSearch", s:g_bright_white, s:g_bright_blue, s:bright_white, s:bright_blue)

" Statusline
call s:Color("StatusLine", s:g_black, s:g_bright_white, s:blue, s:bright_white, "bold")
call s:Color("WildMenu", "NONE", s:g_bright_white, s:blue, s:white, "bold")
call s:Color("StatusLineNC", s:g_black, s:g_bright_white, s:white, s:bright_white)

" Prompt
" Swap file warnings, etc.
call s:Color("Question", s:g_green, "NONE", s:green, "NONE")
" --- Titles ---
call s:Color("Title", s:g_magenta, "NONE", s:magenta, "NONE", "bold")
" -- More --
call s:Color("MoreMsg", s:g_green, "NONE", s:green, "NONE", "bold")
" -- INSERT --, -- VISUAL --, -- REPLACE -- TODO: Conditionall highlight this ModeMsg
call s:Color("ModeMsg", s:g_black, s:g_bright_white, s:black, s:bright_white, "bold")

" Visual Aids
call s:Color("MatchParen", "NONE", s:g_bright_red, s:bright_white, s:bright_blue, "bold")
call s:Color("Visual", "NONE", s:g_white, "NONE", s:white)
call s:Color("VisualNOS", s:g_black, s:g_white, s:black, s:white)
call s:Color("NonText", s:g_bright_blue, "NONE", s:bright_blue, "NONE")

call s:Color("Todo", s:g_bright_white, s:g_yellow, s:bright_white, s:yellow)
call s:Color("Error", s:g_bright_white, s:g_bright_red, s:bright_white, s:bright_red)
call s:Color("ErrorMsg", s:g_bright_white, s:g_bright_red, s:bright_white, s:bright_red)
call s:Color("WarningMsg", s:g_bright_white, s:g_yellow, s:bright_white, s:yellow)
call s:Color("SpecialKey", s:g_black, s:g_bright_white, s:black, s:bright_white, "underline")
"hi Underlined                      ctermfg=none    ctermbg=0       cterm=none
"hi Ignore                          ctermfg=15      ctermbg=8       cterm=none

" Completion Menu
call s:Color("Pmenu", s:g_black, s:g_bright_white, s:black, s:bright_white)
call s:Color("PmenuSel", s:g_bright_white, s:g_bright_blue, s:bright_white, s:bright_blue) 
call s:Color("PmenuSbar", s:g_bright_white, s:g_bright_white, s:bright_white, s:bright_white)
call s:Color("PmenuThumb", s:g_white, s:g_white, s:white, s:white)

"" Diff
call s:Color("DiffAdd", s:g_green, s:g_bright_green, s:green, s:bright_green, "bold")
call s:Color("DiffChange", s:g_black, s:g_bright_yellow, s:black, s:bright_yellow, "bold")
call s:Color("DiffText", s:g_black, s:g_yellow, s:black, s:yellow, "bold")
call s:Color("DiffDelete", s:g_bright_red, s:g_bright_magenta, s:bright_red, s:bright_magenta, "bold")

"" Spelling
"hi SpellBad
"hi SpellCap
"hi SpellLocal
"hi SpellRare

"" Language Constructs
"hi Statement
"hi Conditional
"hi Repeat
"hi Label
"hi Operator
"hi Keyword
"hi Exception
"hi Comment

"hi Special
"hi SpecialChar
"hi Tag
"hi Delimiter
"hi SpecialComment
"hi Debug

"" Variable Types
"hi Constant
"hi String
"hi StringDelimiter
"hi Character
"hi Number
"hi Boolean
"hi Float

"hi Identifier
"hi Function

" IndentLine
call s:Color("Conceal", s:g_black, s:g_bright_white, s:black, s:bright_white)

" GitGutter
call s:Color("GitGutterAdd", s:g_bright_green, s:g_bright_white, s:bright_green, s:bright_white)
call s:Color("GitGutterChange", s:g_yellow, s:g_bright_white, s:yellow, s:bright_white)
call s:Color("GitGutterDelete", s:g_bright_red, s:g_bright_white, s:bright_red, s:bright_white)
call s:Color("GitGutterChangeDelete", s:g_magenta, s:g_bright_white, s:magenta, s:bright_white)

"" C Family
"hi PreProc
"hi Include
"hi Define
"hi Macro
"hi PreCondit

"hi Type
"hi StorageClass
"hi Structure
"hi Typedef
"
"" Ruby
"hi rubyModule
"hi rubyClass
"hi rubyPseudoVariable

"hi rubyKeyword
"hi rubyInstanceVariable
"hi rubyAccess
"hi rubyAttribute
"hi rubyInclude
"hi rubyCurlyBlockDelimiter
"hi rubyArrayDelimiter

call s:Color("rubyStringDelimiter", "NONE", "NONE", s:blue, s:bright_white)
call s:Color("rubyString", "NONE", "NONE", s:blue, s:bright_white)
call s:Color("rubySymbol", "NONE","NONE", s:bright_magenta, s:bright_white)
call s:Color("rubyInteger", "NONE", "NONE", s:bright_red, s:bright_white)
call s:Color("rubyInterpolationDelimiter", "NONE", "NONE", s:green, s:bright_white)
call s:Color("rubyComment", "NONE", "NONE", s:bright_black, s:bright_white)

"call s:Color("rubyCurlyBlock", "NONE","NONE", s:red, s:bright_white)
"call s:Color("rubyMethodBlock", "NONE", "NONE", s:red, s:bright_white)
"call s:Color("rubyDoBlock", "NONE", "NONE", s:red, s:bright_white)
"call s:Color("rubyLocalVariableOrMethod", "NONE", "NONE", s:red, s:bright_white)

"hi rubyRepeat
"hi rubyExceptional
"hi rubyBoolean
"
"" Python
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
call s:Color("netrwTreeBar", s:g_black, "NONE", s:black, "NONE")
