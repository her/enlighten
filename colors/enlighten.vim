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

highlight commonOperator ctermfg=4 guifg=#5891F8
highlight baseDelimiter ctermfg=4 guifg=#5891F8

highlight Comment        ctermfg=7 guifg=#BFBFBF
highlight Constant       ctermfg=1 guifg=#E64B6A
highlight Identifier     ctermfg=6 guifg=#43B9FC
highlight Statement      ctermfg=3 guifg=#FD7B31
highlight PreProc        ctermfg=5 guifg=#CE78F3
highlight Type           ctermfg=2 guifg=#3BBE89
highlight Special        ctermfg=5 guifg=#CE78F3
highlight Underlined     ctermfg=5 cterm=underline guifg=#CE78F3 gui=underline
highlight Ignore         ctermfg=7 guifg=#BFBFBF
highlight Error          ctermfg=15 ctermbg=1 guifg=#BFBFBF guibg=#E64B6A
highlight ErrorMsg       ctermfg=15 ctermbg=1 guifg=#BFBFBF guibg=#E64B6A
highlight ModeMsg        cterm=bold gui=bold
highlight MoreMsg        ctermfg=2 guifg=#3BBE89
highlight WarningMsg     ctermfg=1 guifg=#E64B6A
highlight Todo           ctermfg=0 ctermbg=3 guifg=#000000 guibg=#FD7B31
highlight LineNr         ctermfg=8 guifg=#424242
highlight ColorColumn    ctermfg=8 ctermbg=7 guifg=#424242 guibg=#BFBFBF
highlight Folded         ctermfg=8 ctermbg=7 guifg=#424242 guibg=#BFBFBF
highlight FoldColumn     ctermfg=8 ctermbg=7 guifg=#424242 guibg=#BFBFBF
highlight SignColumn     ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE
highlight CursorColumn   ctermbg=7 guibg=#BFBFBF
highlight CursorLine     cterm=underline gui=underline
highlight CursorLineNr   ctermfg=3 guifg=#FD7B31
highlight Cursor         ctermfg=0 guifg=#000000
highlight CursorIM       ctermfg=0 guifg=#000000
highlight StatusLine     ctermfg=0 ctermbg=15 cterm=bold guifg=#000000 guibg=#BFBFBF gui=bold
highlight StatusLineNC   ctermfg=15 ctermbg=7 guifg=#424242 guibg=#BFBFBF
highlight VertSplit      NONE
highlight Conceal        ctermfg=7 ctermbg=7 guifg=#BFBFBF guibg=#BFBFBF
highlight DiffAdd        ctermfg=0 ctermbg=2 guifg=#000000 guibg=#3BBE89
highlight DiffChange     ctermfg=0 ctermbg=3 guifg=#000000 guibg=#000000
highlight DiffDelete     ctermfg=0 ctermbg=1 guifg=#000000 guibg=#E64B6A
highlight DiffText       ctermfg=0 ctermbg=11 cterm=bold guifg=#000000 gui=bold
highlight Directory      ctermfg=4 guifg=#5891F8
highlight IncSearch      cterm=reverse gui=reverse
highlight MatchParen     ctermbg=14 guibg=#0CBACD
highlight NonText        ctermfg=4 guifg=#5891F8

highlight WildMenu       ctermfg=0 ctermbg=3 guifg=#000000 guibg=#FD7B31
highlight Question       ctermfg=2 guifg=#3BBE89
highlight Search         ctermfg=0 ctermbg=11 guifg=#000000 guibg=#FEF937
highlight SpecialKey     ctermfg=4 guifg=#5891F8
highlight SpellCap       ctermfg=8 ctermbg=7 guifg=#424242 guibg=#BFBFBF
highlight SpellBad       ctermfg=1 guifg=#E64B6A
highlight SpellLocal     ctermfg=6 guifg=#43B9FC
highlight SpellRare      ctermfg=5 guifg=#CE78F3
highlight TabLine        ctermfg=0 ctermbg=7 cterm=underline guifg=#000000 guibg=#BFBFBF gui=underline
highlight TabLineFill    ctermfg=0 guifg=#000000
highlight TabLineSel     cterm=bold gui=bold
highlight Title          ctermfg=5 guifg=#CE78F3
highlight Visual         cterm=inverse ctermbg=NONE gui=inverse guibg=NONE

" These are the highlight groups to style the little completion window vim
" draws.  PmenuSbar and PmenuThumb control the styles of the scrollbar builtin
" to the menu. Pmenu is the list of items and PmenuSel highlights the selected
" item.
" +-------------+
" | Pmenu     |x|<---- PmenuSbar
" |-----------|x|
" | PmenuSel  |x|
" |-----------|x|
" | Pmenu     |x|
" |           |o|<---- PmenuThumb
" |           |o|
" +-------------+
highlight Pmenu          ctermfg=0 ctermbg=15 guifg=#000000 guibg=#BFBFBF
highlight PmenuSel       ctermfg=0 ctermbg=7  guifg=#BFBFBF guibg=#000000
highlight PmenuSbar      ctermfg=7 guifg=#424242
highlight PmenuThumb     ctermfg=15 guifg=#000000


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

highlight rubyInclude ctermfg=4 guifg=#5891F8
"hi link rubyModule Include
highlight rubyClass ctermfg=4 guifg=#5891F8
highlight rubyMacro ctermfg=4 guifg=#5891F8
"hi link rubyAttribute Include

"rubyPseudoVariable

"hi link rubyPseudoVariable Blue
highlight rubyDefine ctermfg=12 guifg=#3E7FEE
"hi link rubyFunction Function
"hi link rubyConstant Constant

highlight rubySymbol ctermfg=5 guifg=#CE78F3
"hi link rubyConditional Conditional
"hi link rubyException Exception
"hi link rubyControl Repeat

"rubyDoBlock
"rubyBlockParameter

"hi link rubyBlockParameter Black
highlight rubyString ctermfg=5 guifg=#CE78F3
highlight rubyStringDelimiter ctermfg=1 guifg=#E64B6A
"hi link rubyInterpolationDelimiter String
"hi link rubyInteger Number
"hi link rubyFloat Float
highlight rubyComment ctermfg=4 guifg=#5891F8
highlight rubyTodo ctermfg=0 ctermbg=11 cterm=bold guifg=#000000 guibg=#FEF937
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

"
"
" Plugins
"
"

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

highlight BufferCurrent ctermfg=0 ctermbg=15
highlight BufferCurrentIndex ctermfg=6 ctermbg=15
highlight BufferCurrentMod ctermfg=3 ctermbg=15
highlight BufferCurrentSign ctermfg=6 ctermbg=15
highlight BufferCurrentTarget ctermfg=1 ctermbg=15 cterm=bold

highlight BufferVisible ctermfg=0 ctermbg=15
highlight BufferVisibleIndex ctermfg=0 ctermbg=15
highlight BufferVisibleMod ctermfg=3 ctermbg=15
highlight BufferVisibleSign ctermfg=0 ctermbg=15
highlight BufferVisibleTarget ctermfg=1 ctermbg=15 cterm=bold

highlight BufferInactive ctermfg=7 ctermbg=15
highlight BufferInactiveIndex ctermfg=8 ctermbg=15
highlight BufferInactiveMod ctermfg=3 ctermbg=15
highlight BufferInactiveSign ctermfg=8 ctermbg=15
highlight BufferInactiveTarget ctermfg=1 ctermbg=15 cterm=bold

highlight BufferTabpages ctermfg=6 ctermbg=15 cterm=bold
highlight BufferTabpageFill ctermfg=7 ctermbg=15

highlight link BufferCurrentIcon BufferCurrent
highlight link BufferVisibleIcon BufferVisible
highlight link BufferInactiveIcon BufferInactive
highlight link BufferOffset BufferTabpageFill

highlight IndentBlanklineChar ctermfg=15

if &background ==# 'dark'
  highlight Pmenu          ctermfg=15 ctermbg=0 guifg=#000000 guibg=#BFBFBF
  highlight PmenuSel       ctermfg=15 ctermbg=8  guifg=#BFBFBF guibg=#000000
  highlight PmenuSbar      ctermfg=8 guifg=#424242
  highlight PmenuThumb     ctermfg=0 guifg=#000000

  highlight StatusLine     ctermfg=15 ctermbg=0 cterm=bold guifg=#000000 guibg=#BFBFBF gui=bold
  highlight StatusLineNC   ctermfg=8 ctermbg=0 guifg=#424242 guibg=#BFBFBF

  "
  "
  " Plugins
  "
  "
  highlight BufferCurrent ctermfg=15 ctermbg=0
  highlight BufferCurrentIndex ctermfg=6 ctermbg=0
  highlight BufferCurrentMod ctermfg=3 ctermbg=0
  highlight BufferCurrentSign ctermfg=6 ctermbg=0
  highlight BufferCurrentTarget ctermfg=1 ctermbg=0 cterm=bold

  highlight BufferVisible ctermfg=15 ctermbg=0
  highlight BufferVisibleIndex ctermfg=15 ctermbg=0
  highlight BufferVisibleMod ctermfg=15 ctermbg=0
  highlight BufferVisibleSign ctermfg=15 ctermbg=0
  highlight BufferVisibleTarget ctermfg=1 ctermbg=0 cterm=bold

  highlight BufferInactive ctermfg=7 ctermbg=0
  highlight BufferInactiveIndex ctermfg=8 ctermbg=0
  highlight BufferInactiveMod ctermfg=3 ctermbg=0
  highlight BufferInactiveSign ctermfg=8 ctermbg=0
  highlight BufferInactiveTarget ctermfg=1 ctermbg=0 cterm=bold

  highlight BufferTabpages ctermfg=6 ctermbg=0 cterm=bold
  highlight BufferTabpageFill ctermfg=8 ctermbg=0

  highlight link BufferCurrentIcon BufferCurrent
  highlight link BufferVisibleIcon BufferVisible
  highlight link BufferInactiveIcon BufferInactive
  highlight link BufferOffset BufferTabpageFill

  highlight IndentBlanklineChar ctermfg=0
endif

highlight DapUIScope ctermfg=6 guifg=#00F1F5
highlight DapUIStoppedThread ctermfg=6 guifg=#00f1f5
highlight DapUIBreakpointsPath ctermfg=6 guifg=#00F1F5
highlight DapUILineNumber ctermfg=6 guifg=#00f1f5
highlight DapUIDecoration ctermfg=6 guifg=#00F1F5
highlight DapUIFloatBorder ctermfg=6 guifg=#00F1F5
highlight DapUIThread ctermfg=2 guifg=#A9FF68
highlight DapUIWatchesValue ctermfg=2 guifg=#A9FF68
highlight DapUIBreakpointsInfo ctermfg=2 guifg=#A9FF68
highlight DapUIBreakpointsCurrentLine ctermfg=2 guifg=#A9FF68 cterm=bold
highlight DapUIType ctermfg=5 guifg=#D484FF
highlight DapUISource ctermfg=5 guifg=#D484FF
highlight DapUIWatchesEmpty ctermfg=1 guifg=#F70067
highlight DapUIWatchesError ctermfg=1 guifg=#F70067
highlight link DapUIBreakpointsLine DapUILineNumber
highlight link DapUIFrameName Normal
highlight link DapUIVariable Normal
