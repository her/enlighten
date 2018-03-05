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

" Color function
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
call s:Color("VertSplit", s:g_bright_white, s:g_white, s:bright_white, s:white)
call s:Color("ColorColumn", "NONE", s:g_bright_red, "NONE", s:bright_red)
"hi TabLine                         ctermfg=none    ctermbg=none    cterm=none
"hi TabLineFill                     ctermfg=none    ctermbg=none    cterm=none
"hi TabLineSel                      ctermfg=none    ctermbg=none    cterm=none

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
" -- INSERT --, -- VISUAL --, -- REPLACE --
call s:Color("ModeMsg", s:g_black, s:g_bright_white, s:black, s:bright_white, "bold") " TODO: Conditionally highlight

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
"hi SpellBad                        ctermfg=15 ctermbg=9    cterm=none
"hi SpellCap                        ctermfg=15  ctermbg=11    cterm=none
"hi SpellLocal                      ctermfg=none  ctermbg=12    cterm=none
"hi SpellRare                       ctermfg=none  ctermbg=13    cterm=none

"" Language Constructs
"hi Statement                       ctermfg=none    ctermbg=none    cterm=none
"hi Conditional                     ctermfg=5    	 ctermbg=none    cterm=none
"hi Repeat                          ctermfg=none    ctermbg=none    cterm=none
"hi Label                           ctermfg=none    ctermbg=none    cterm=none
"hi Operator                        ctermfg=none    ctermbg=none    cterm=none
"hi Keyword                         ctermfg=none    ctermbg=none    cterm=none
"hi Exception                       ctermfg=none    ctermbg=none    cterm=none
"hi Comment                         ctermfg=4    	 ctermbg=none    cterm=none

"hi Special                         ctermfg=none    ctermbg=none    cterm=none
"hi SpecialChar                     ctermfg=none    ctermbg=none    cterm=none
"hi Tag                             ctermfg=none    ctermbg=none    cterm=none
"hi Delimiter                       ctermfg=none    ctermbg=none    cterm=none
"hi SpecialComment                  ctermfg=none    ctermbg=none    cterm=none
"hi Debug                           ctermfg=none    ctermbg=none    cterm=none

"" Variable Types
"hi Constant                        ctermfg=2    	 ctermbg=none    cterm=none
"hi String                          ctermfg=0    	 ctermbg=none    cterm=none
"hi StringDelimiter                 ctermfg=none    ctermbg=none    cterm=none
"hi Character                       ctermfg=none    ctermbg=none    cterm=none
"hi Number                          ctermfg=1    	 ctermbg=none    cterm=none
"hi Boolean                         ctermfg=none    ctermbg=none    cterm=none
"hi Float                           ctermfg=1       ctermbg=none    cterm=none

"hi Identifier                      ctermfg=none    ctermbg=none    cterm=none
"hi Function                        ctermfg=none    ctermbg=none    cterm=none

" IndentLine
call s:Color("Conceal", s:g_black, s:g_bright_white, s:black, s:bright_white)

" GitGutter
call s:Color("GitGutterAdd", s:g_bright_green, s:g_bright_white, s:bright_green, s:bright_white)
call s:Color("GitGutterChange", s:g_yellow, s:g_bright_white, s:yellow, s:bright_white)
call s:Color("GitGutterDelete", s:g_bright_red, s:g_bright_white, s:bright_red, s:bright_white)
call s:Color("GitGutterChangeDelete", s:g_magenta, s:g_bright_white, s:magenta, s:bright_white)

"" C Family
"hi PreProc                         ctermfg=none    ctermbg=none    cterm=none
"hi Include                         ctermfg=none    ctermbg=none    cterm=none
"hi Define                          ctermfg=6       ctermbg=none    cterm=bold
"hi Macro                           ctermfg=none    ctermbg=none    cterm=none
"hi PreCondit                       ctermfg=none    ctermbg=none    cterm=none
"
"hi Type                            ctermfg=none    ctermbg=none    cterm=none
"hi StorageClass                    ctermfg=none    ctermbg=none    cterm=none
"hi Structure                       ctermfg=none    ctermbg=none    cterm=none
"hi Typedef                         ctermfg=none    ctermbg=none    cterm=none
"
"" Ruby
"hi rubyModule                      ctermfg=6       ctermbg=none    cterm=bold
"hi rubyClass                       ctermfg=5       ctermbg=none    cterm=bold
"hi rubyPseudoVariable              ctermfg=none    ctermbg=none    cterm=none
"hi rubyKeyword                     ctermfg=none    ctermbg=none    cterm=none
"hi rubyInstanceVariable            ctermfg=none    ctermbg=none    cterm=none
"hi rubyFunction                    ctermfg=none    ctermbg=none    cterm=none
"hi rubyDefine                      ctermfg=none    ctermbg=none    cterm=none
"hi rubySymbol                      ctermfg=none    ctermbg=none    cterm=none
"hi rubyConstant                    ctermfg=none    ctermbg=none    cterm=none
"hi rubyAccess                      ctermfg=none    ctermbg=none    cterm=none
"hi rubyAttribute                   ctermfg=none    ctermbg=none    cterm=none
"hi rubyInclude                     ctermfg=none    ctermbg=none    cterm=none
"hi rubyLocalVariableOrMethod       ctermfg=none    ctermbg=none    cterm=none
"hi rubyCurlyBlock                  ctermfg=none    ctermbg=none    cterm=none
"hi rubyCurlyBlockDelimiter         ctermfg=none    ctermbg=none    cterm=none
"hi rubyArrayDelimiter              ctermfg=none    ctermbg=none    cterm=none
"hi rubyStringDelimiter             ctermfg=none    ctermbg=none    cterm=none
"hi rubyInterpolationDelimiter      ctermfg=none    ctermbg=none    cterm=none
"hi rubyConditional                 ctermfg=none    ctermbg=none    cterm=none
"hi rubyRepeat                      ctermfg=none    ctermbg=none    cterm=none
"hi rubyControl                     ctermfg=none    ctermbg=none    cterm=none
"hi rubyException                   ctermfg=none    ctermbg=none    cterm=none
"hi rubyExceptional                 ctermfg=none    ctermbg=none    cterm=none
"hi rubyBoolean                     ctermfg=none    ctermbg=none    cterm=none
"
"" Python
"hi pythonImport                    ctermfg=none    ctermbg=none    cterm=none 
"hi pythonExceptions                ctermfg=none    ctermbg=none    cterm=none
"hi pythonException                 ctermfg=none    ctermbg=none    cterm=none
"hi pythonInclude                   ctermfg=none    ctermbg=none    cterm=none
"hi pythonStatement                 ctermfg=none    ctermbg=none    cterm=none
"hi pythonConditional               ctermfg=none    ctermbg=none    cterm=none
"hi pythonRepeat                    ctermfg=none    ctermbg=none    cterm=none
"hi pythonFunction                  ctermfg=none    ctermbg=none    cterm=none
"hi pythonPreCondit                 ctermfg=none    ctermbg=none    cterm=none
"hi pythonExClass                   ctermfg=none    ctermbg=none    cterm=none
"hi pythonOperator                  ctermfg=none    ctermbg=none    cterm=none
"hi pythonBuiltin                   ctermfg=none    ctermbg=none    cterm=none
"hi pythonDecorator                 ctermfg=none    ctermbg=none    cterm=none
"hi pythonString                    ctermfg=none    ctermbg=none    cterm=none
"hi pythonEscape                    ctermfg=none    ctermbg=none    cterm=none
"hi pythonStrFormatting             ctermfg=none    ctermbg=none    cterm=none
"hi pythonBoolean                   ctermfg=none    ctermbg=none    cterm=none
"hi pythonExClass                   ctermfg=none    ctermbg=none    cterm=none
"hi pythonBytesEscape               ctermfg=none    ctermbg=none    cterm=none
"hi pythonDottedName                ctermfg=none    ctermbg=none    cterm=none
"hi pythonStrFormat                 ctermfg=none    ctermbg=none    cterm=none
"
"" Javascript
"hi javaScriptBraces                ctermfg=none    ctermbg=none    cterm=none
"hi javaScriptParens                ctermfg=none    ctermbg=none    cterm=none
"hi javaScriptIdentifier            ctermfg=none    ctermbg=none    cterm=none
"hi javaScriptFunction              ctermfg=none    ctermbg=none    cterm=none
"hi javaScriptConditional           ctermfg=none    ctermbg=none    cterm=none
"hi javaScriptRepeat                ctermfg=none    ctermbg=none    cterm=none
"hi javaScriptBoolean               ctermfg=none    ctermbg=none    cterm=none
"hi javaScriptNumber                ctermfg=none    ctermbg=none    cterm=none
"hi javaScriptMember                ctermfg=none    ctermbg=none    cterm=none
"hi javaScriptReserved              ctermfg=none    ctermbg=none    cterm=none
"hi javascriptNull                  ctermfg=none    ctermbg=none    cterm=none
"hi javascriptGlobal                ctermfg=none    ctermbg=none    cterm=none
"hi javascriptStatement             ctermfg=none    ctermbg=none    cterm=none
"hi javaScriptMessage               ctermfg=none    ctermbg=none    cterm=none
"hi javaScriptMember                ctermfg=none    ctermbg=none    cterm=none
"
"" JSON
"hi jsonKeyword                     ctermfg=none    ctermbg=none    cterm=none
"hi jsonString                      ctermfg=none    ctermbg=none    cterm=none
"hi jsonQuote                       ctermfg=none    ctermbg=none    cterm=none
"hi jsonNoise                       ctermfg=none    ctermbg=none    cterm=none
"hi jsonKeywordMatch                ctermfg=none    ctermbg=none    cterm=none
"hi jsonBraces                      ctermfg=none    ctermbg=none    cterm=none
"hi jsonNumber                      ctermfg=none    ctermbg=none    cterm=none
"hi jsonNull                        ctermfg=none    ctermbg=none    cterm=none
"hi jsonBoolean                     ctermfg=none    ctermbg=none    cterm=none
"hi jsonCommentError                ctermfg=none    ctermbg=none    cterm=none
"
"" SQL
"hi sqlStatement                    ctermfg=none    ctermbg=none    cterm=none
"hi sqlType                         ctermfg=none    ctermbg=none    cterm=none
"hi sqlKeyword                      ctermfg=none    ctermbg=none    cterm=none
"hi sqlOperator                     ctermfg=none    ctermbg=none    cterm=none
"hi sqlSpecial                      ctermfg=none    ctermbg=none    cterm=none
"hi mysqlVariable                   ctermfg=none    ctermbg=none    cterm=none
"hi mysqlType                       ctermfg=none    ctermbg=none    cterm=none
"hi mysqlKeyword                    ctermfg=none    ctermbg=none    cterm=none
"hi mysqlOperator                   ctermfg=none    ctermbg=none    cterm=none
"hi mysqlSpecial                    ctermfg=none    ctermbg=none    cterm=none
"
"" YAML
"hi yamlBlockMappingKey             ctermfg=none    ctermbg=none    cterm=none
"hi yamlKeyValueDelimiter           ctermfg=none    ctermbg=none    cterm=none
"hi yamlBlockCollectionItemStart    ctermfg=none    ctermbg=none    cterm=none
"
"" XML
"hi xmlProcessingDelim              ctermfg=none    ctermbg=none    cterm=none
"hi xmlString                       ctermfg=none    ctermbg=none    cterm=none
"hi xmlEqual                        ctermfg=none    ctermbg=none    cterm=none
"hi xmlAttrib                       ctermfg=none    ctermbg=none    cterm=none
"hi xmlAttribPunct                  ctermfg=none    ctermbg=none    cterm=none
"hi xmlTag                          ctermfg=none    ctermbg=none    cterm=none
"hi xmlTagName                      ctermfg=none    ctermbg=none    cterm=none
"hi xmlEndTag                       ctermfg=none    ctermbg=none    cterm=none
"hi xmlNamespace                    ctermfg=none    ctermbg=none    cterm=none
"
"" HTML
"hi htmlTitle                       ctermfg=none    ctermbg=none    cterm=none
"hi htmlH1                          ctermfg=none    ctermbg=none    cterm=none
"hi htmlH2                          ctermfg=none    ctermbg=none    cterm=none
"hi htmlH3                          ctermfg=none    ctermbg=none    cterm=none
"hi htmlH4                          ctermfg=none    ctermbg=none    cterm=none
"hi htmlTag                         ctermfg=none    ctermbg=none    cterm=none
"hi htmlTagName                     ctermfg=none    ctermbg=none    cterm=none
"hi htmlArg                         ctermfg=none    ctermbg=none    cterm=none
"hi htmlEndTag                      ctermfg=none    ctermbg=none    cterm=none
"hi htmlString                      ctermfg=none    ctermbg=none    cterm=none
"hi htmlScriptTag                   ctermfg=none    ctermbg=none    cterm=none
"hi htmlBold                        ctermfg=none    ctermbg=none    cterm=none
"hi htmlItalic                      ctermfg=none    ctermbg=none    cterm=none
"hi htmlBoldItalic                  ctermfg=none    ctermbg=none    cterm=none
"hi htmlTagN                        ctermfg=none    ctermbg=none    cterm=none
"hi htmlSpecialTagName              ctermfg=none    ctermbg=none    cterm=none
"hi htmlComment                     ctermfg=none    ctermbg=none    cterm=none
"hi htmlCommentPart                 ctermfg=none    ctermbg=none    cterm=none
"
"" CSS
"hi cssIdentifier                   ctermfg=none    ctermbg=none    cterm=none
"hi cssPositioningProp              ctermfg=none    ctermbg=none    cterm=none
"hi cssNoise                        ctermfg=none    ctermbg=none    cterm=none
"hi cssBoxProp                      ctermfg=none    ctermbg=none    cterm=none
"hi cssTableAttr                    ctermfg=none    ctermbg=none    cterm=none
"hi cssPositioningAttr              ctermfg=none    ctermbg=none    cterm=none
"hi cssValueLength                  ctermfg=none    ctermbg=none    cterm=none
"hi cssFunctionName                 ctermfg=none    ctermbg=none    cterm=none
"hi cssUnitDecorators               ctermfg=none    ctermbg=none    cterm=none
"hi cssColor                        ctermfg=none    ctermbg=none    cterm=none
"hi cssBraces                       ctermfg=none    ctermbg=none    cterm=none
"hi cssBackgroundProp               ctermfg=none    ctermbg=none    cterm=none
"hi cssTextProp                     ctermfg=none    ctermbg=none    cterm=none
"hi cssDimensionProp                ctermfg=none    ctermbg=none    cterm=none
"hi cssClassName                    ctermfg=none    ctermbg=none    cterm=none
"
"" Markdown
"hi markdownHeadingRule             ctermfg=none    ctermbg=none    cterm=none
"hi markdownH1                      ctermfg=none    ctermbg=none    cterm=none
"hi markdownH2                      ctermfg=none    ctermbg=none    cterm=none
"hi markdownBlockquote              ctermfg=none    ctermbg=none    cterm=none
"hi markdownCodeBlock               ctermfg=none    ctermbg=none    cterm=none
"hi markdownCode                    ctermfg=none    ctermbg=none    cterm=none
"hi markdownLink                    ctermfg=none    ctermbg=none    cterm=none
"hi markdownUrl                     ctermfg=none    ctermbg=none    cterm=none
"hi markdownLinkText                ctermfg=none    ctermbg=none    cterm=none
"hi markdownLinkTextDelimiter       ctermfg=none    ctermbg=none    cterm=none
"hi markdownLinkDelimiter           ctermfg=none    ctermbg=none    cterm=none
"hi markdownCodeDelimiter           ctermfg=none    ctermbg=none    cterm=none
"hi mkdCode                         ctermfg=none    ctermbg=none    cterm=none
"hi mkdLink                         ctermfg=none    ctermbg=none    cterm=none
"hi mkdURL                          ctermfg=none    ctermbg=none    cterm=none
"hi mkdString                       ctermfg=none    ctermbg=none    cterm=none
"hi mkdBlockQuote                   ctermfg=none    ctermbg=none    cterm=none
"hi mkdLinkTitle                    ctermfg=none    ctermbg=none    cterm=none
"hi mkdDelimiter                    ctermfg=none    ctermbg=none    cterm=none
"hi mkdRule                         ctermfg=none    ctermbg=none    cterm=none
"
"" Shell
"hi bashStatement                   ctermfg=none    ctermbg=none    cterm=none
"hi shDerefVar                      ctermfg=none    ctermbg=none    cterm=none
"hi shDerefSimple                   ctermfg=none    ctermbg=none    cterm=none
"hi shFunction                      ctermfg=none    ctermbg=none    cterm=none
"hi shStatement                     ctermfg=none    ctermbg=none    cterm=none
"hi shLoop                          ctermfg=none    ctermbg=none    cterm=none
"hi shQuote                         ctermfg=none    ctermbg=none    cterm=none
"hi shCaseEsac                      ctermfg=none    ctermbg=none    cterm=none
"hi shSnglCase                      ctermfg=none    ctermbg=none    cterm=none
"hi shFunctionOne                   ctermfg=none    ctermbg=none    cterm=none
"hi shCase                          ctermfg=none    ctermbg=none    cterm=none
"hi shSetList                       ctermfg=none    ctermbg=none    cterm=none

" netrw
"hi netrwVersion                    ctermfg=none    ctermbg=none    cterm=none
"hi netrwList                       ctermfg=none    ctermbg=none    cterm=none
"hi netrwHidePat                    ctermfg=none    ctermbg=none    cterm=none
"hi netrwQuickHelp                  ctermfg=none    ctermbg=none    cterm=none
"hi netrwHelpCmd                    ctermfg=none    ctermbg=none    cterm=none
"hi netrwDir                        ctermfg=none    ctermbg=none    cterm=none
"hi netrwClassify                   ctermfg=none    ctermbg=none    cterm=none
"hi netrwExe                        ctermfg=none    ctermbg=none    cterm=none
"hi netrwSuffixes                   ctermfg=none    ctermbg=none    cterm=none
"hi netrwTreeBar                    ctermfg=none    ctermbg=none    cterm=none
call s:Color("netrwTreeBar", s:g_black, "NONE", s:black, "NONE")
