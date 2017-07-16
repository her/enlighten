" Enlighten - A Color Scheme
" Maintainer: Melanie Berkley <http://berkley.io>
" Version: 0.1.0
" License: BSD-2-Clause

" Initialize Enlighten
set background=light	
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="enlighten"

" Editor settings
hi Normal                          ctermfg=none    ctermbg=none    cterm=none
hi Cursor                          ctermfg=none    ctermbg=none    cterm=none
hi CursorLine                      ctermfg=none    ctermbg=none    cterm=none
hi LineNr                          ctermfg=none    ctermbg=none    cterm=none
hi CursorLineNR                    ctermfg=none    ctermbg=none    cterm=none

" Number Column
hi CursorColumn                    ctermfg=none    ctermbg=none    cterm=none
hi FoldColumn                      ctermfg=none    ctermbg=none    cterm=none
hi SignColumn                      ctermfg=none    ctermbg=none    cterm=none
hi Folded                          ctermfg=none    ctermbg=none    cterm=none

" Window & Tab Delimeters
hi VertSplit                       ctermfg=none    ctermbg=none    cterm=none
hi ColorColumn                     ctermfg=none    ctermbg=none    cterm=none
hi TabLine                         ctermfg=none    ctermbg=none    cterm=none
hi TabLineFill                     ctermfg=none    ctermbg=none    cterm=none
hi TabLineSel                      ctermfg=none    ctermbg=none    cterm=none

" File Traversal
hi Directory                       ctermfg=none    ctermbg=none    cterm=none
hi Search                          ctermfg=none    ctermbg=none    cterm=none
hi IncSearch                       ctermfg=none    ctermbg=none    cterm=none

" Prompt & Status
hi StatusLine                      ctermfg=none    ctermbg=none    cterm=none
hi StatusLineNC                    ctermfg=none    ctermbg=none    cterm=none
hi WildMenu                        ctermfg=none    ctermbg=none    cterm=none
hi Question                        ctermfg=none    ctermbg=none    cterm=none
hi Title                           ctermfg=none    ctermbg=none    cterm=none
hi ModeMsg                         ctermfg=none    ctermbg=none    cterm=none
hi MoreMsg                         ctermfg=none    ctermbg=none    cterm=none

" Visual Aids
hi MatchParen                      ctermfg=none    ctermbg=none    cterm=none
hi Visual                          ctermfg=none    ctermbg=none    cterm=none
hi VisualNOS                       ctermfg=none    ctermbg=none    cterm=none
hi NonText                         ctermfg=none    ctermbg=none    cterm=none

hi Todo                            ctermfg=none    ctermbg=none    cterm=none
hi Underlined                      ctermfg=none    ctermbg=none    cterm=none
hi Error                           ctermfg=none    ctermbg=none    cterm=none
hi ErrorMsg                        ctermfg=none    ctermbg=none    cterm=none
hi WarningMsg                      ctermfg=none    ctermbg=none    cterm=none
hi Ignore                          ctermfg=none    ctermbg=none    cterm=none
hi SpecialKey                      ctermfg=none    ctermbg=none    cterm=none

" Diff
hi DiffAdd                         ctermfg=none    ctermbg=none    cterm=none
hi DiffChange                      ctermfg=none    ctermbg=none    cterm=none
hi DiffDelete                      ctermfg=none    ctermbg=none    cterm=none
hi DiffText                        ctermfg=none    ctermbg=none    cterm=none
hi diffAdded                       ctermfg=none    ctermbg=none    cterm=none
hi diffChanged                     ctermfg=none    ctermbg=none    cterm=none
hi diffRemoved                     ctermfg=none    ctermbg=none    cterm=none
hi diffLine                        ctermfg=none    ctermbg=none    cterm=none

" Completion Menu
hi Pmenu                           ctermfg=none    ctermbg=none    cterm=none
hi PmenuSel                        ctermfg=none    ctermbg=none    cterm=none
hi PmenuSbar                       ctermfg=none    ctermbg=none    cterm=none
hi PmenuThumb                      ctermfg=none    ctermbg=none    cterm=none

" Spelling
hi SpellBad                        ctermfg=none    ctermbg=none    cterm=none
hi SpellCap                        ctermfg=none    ctermbg=none    cterm=none
hi SpellLocal                      ctermfg=none    ctermbg=none    cterm=none
hi SpellRare                       ctermfg=none    ctermbg=none    cterm=none

" Language Constructs
hi Statement                       ctermfg=none    ctermbg=none    cterm=none
hi Conditional                     ctermfg=5    	 ctermbg=none    cterm=none
hi Repeat                          ctermfg=none    ctermbg=none    cterm=none
hi Label                           ctermfg=none    ctermbg=none    cterm=none
hi Operator                        ctermfg=none    ctermbg=none    cterm=none
hi Keyword                         ctermfg=none    ctermbg=none    cterm=none
hi Exception                       ctermfg=none    ctermbg=none    cterm=none
hi Comment                         ctermfg=4    	 ctermbg=none    cterm=none

hi Special                         ctermfg=none    ctermbg=none    cterm=none
hi SpecialChar                     ctermfg=none    ctermbg=none    cterm=none
hi Tag                             ctermfg=none    ctermbg=none    cterm=none
hi Delimiter                       ctermfg=none    ctermbg=none    cterm=none
hi SpecialComment                  ctermfg=none    ctermbg=none    cterm=none
hi Debug                           ctermfg=none    ctermbg=none    cterm=none

" Variable Types
hi Constant                        ctermfg=2    	 ctermbg=none    cterm=none
hi String                          ctermfg=0    	 ctermbg=none    cterm=none
hi StringDelimiter                 ctermfg=none    ctermbg=none    cterm=none
hi Character                       ctermfg=none    ctermbg=none    cterm=none
hi Number                          ctermfg=1    	 ctermbg=none    cterm=none
hi Boolean                         ctermfg=none    ctermbg=none    cterm=none
hi Float                           ctermfg=1       ctermbg=none    cterm=none

hi Identifier                      ctermfg=none    ctermbg=none    cterm=none
hi Function                        ctermfg=none    ctermbg=none    cterm=none

" C Family
hi PreProc                         ctermfg=none    ctermbg=none    cterm=none
hi Include                         ctermfg=none    ctermbg=none    cterm=none
hi Define                          ctermfg=6       ctermbg=none    cterm=bold
hi Macro                           ctermfg=none    ctermbg=none    cterm=none
hi PreCondit                       ctermfg=none    ctermbg=none    cterm=none

hi Type                            ctermfg=none    ctermbg=none    cterm=none
hi StorageClass                    ctermfg=none    ctermbg=none    cterm=none
hi Structure                       ctermfg=none    ctermbg=none    cterm=none
hi Typedef                         ctermfg=none    ctermbg=none    cterm=none

" Ruby
hi rubyModule                      ctermfg=6       ctermbg=none    cterm=bold
hi rubyClass                       ctermfg=5       ctermbg=none    cterm=bold
hi rubyPseudoVariable              ctermfg=none    ctermbg=none    cterm=none
hi rubyKeyword                     ctermfg=none    ctermbg=none    cterm=none
hi rubyInstanceVariable            ctermfg=none    ctermbg=none    cterm=none
hi rubyFunction                    ctermfg=none    ctermbg=none    cterm=none
hi rubyDefine                      ctermfg=none    ctermbg=none    cterm=none
hi rubySymbol                      ctermfg=none    ctermbg=none    cterm=none
hi rubyConstant                    ctermfg=none    ctermbg=none    cterm=none
hi rubyAccess                      ctermfg=none    ctermbg=none    cterm=none
hi rubyAttribute                   ctermfg=none    ctermbg=none    cterm=none
hi rubyInclude                     ctermfg=none    ctermbg=none    cterm=none
hi rubyLocalVariableOrMethod       ctermfg=none    ctermbg=none    cterm=none
hi rubyCurlyBlock                  ctermfg=none    ctermbg=none    cterm=none
hi rubyCurlyBlockDelimiter         ctermfg=none    ctermbg=none    cterm=none
hi rubyArrayDelimiter              ctermfg=none    ctermbg=none    cterm=none
hi rubyStringDelimiter             ctermfg=none    ctermbg=none    cterm=none
hi rubyInterpolationDelimiter      ctermfg=none    ctermbg=none    cterm=none
hi rubyConditional                 ctermfg=none    ctermbg=none    cterm=none
hi rubyRepeat                      ctermfg=none    ctermbg=none    cterm=none
hi rubyControl                     ctermfg=none    ctermbg=none    cterm=none
hi rubyException                   ctermfg=none    ctermbg=none    cterm=none
hi rubyExceptional                 ctermfg=none    ctermbg=none    cterm=none
hi rubyBoolean                     ctermfg=none    ctermbg=none    cterm=none

" Python
hi pythonImport                    ctermfg=none    ctermbg=none    cterm=none 
hi pythonExceptions                ctermfg=none    ctermbg=none    cterm=none
hi pythonException                 ctermfg=none    ctermbg=none    cterm=none
hi pythonInclude                   ctermfg=none    ctermbg=none    cterm=none
hi pythonStatement                 ctermfg=none    ctermbg=none    cterm=none
hi pythonConditional               ctermfg=none    ctermbg=none    cterm=none
hi pythonRepeat                    ctermfg=none    ctermbg=none    cterm=none
hi pythonFunction                  ctermfg=none    ctermbg=none    cterm=none
hi pythonPreCondit                 ctermfg=none    ctermbg=none    cterm=none
hi pythonExClass                   ctermfg=none    ctermbg=none    cterm=none
hi pythonOperator                  ctermfg=none    ctermbg=none    cterm=none
hi pythonBuiltin                   ctermfg=none    ctermbg=none    cterm=none
hi pythonDecorator                 ctermfg=none    ctermbg=none    cterm=none
hi pythonString                    ctermfg=none    ctermbg=none    cterm=none
hi pythonEscape                    ctermfg=none    ctermbg=none    cterm=none
hi pythonStrFormatting             ctermfg=none    ctermbg=none    cterm=none
hi pythonBoolean                   ctermfg=none    ctermbg=none    cterm=none
hi pythonExClass                   ctermfg=none    ctermbg=none    cterm=none
hi pythonBytesEscape               ctermfg=none    ctermbg=none    cterm=none
hi pythonDottedName                ctermfg=none    ctermbg=none    cterm=none
hi pythonStrFormat                 ctermfg=none    ctermbg=none    cterm=none

" Javascript
hi javaScriptBraces                ctermfg=none    ctermbg=none    cterm=none
hi javaScriptParens                ctermfg=none    ctermbg=none    cterm=none
hi javaScriptIdentifier            ctermfg=none    ctermbg=none    cterm=none
hi javaScriptFunction              ctermfg=none    ctermbg=none    cterm=none
hi javaScriptConditional           ctermfg=none    ctermbg=none    cterm=none
hi javaScriptRepeat                ctermfg=none    ctermbg=none    cterm=none
hi javaScriptBoolean               ctermfg=none    ctermbg=none    cterm=none
hi javaScriptNumber                ctermfg=none    ctermbg=none    cterm=none
hi javaScriptMember                ctermfg=none    ctermbg=none    cterm=none
hi javaScriptReserved              ctermfg=none    ctermbg=none    cterm=none
hi javascriptNull                  ctermfg=none    ctermbg=none    cterm=none
hi javascriptGlobal                ctermfg=none    ctermbg=none    cterm=none
hi javascriptStatement             ctermfg=none    ctermbg=none    cterm=none
hi javaScriptMessage               ctermfg=none    ctermbg=none    cterm=none
hi javaScriptMember                ctermfg=none    ctermbg=none    cterm=none

" JSON
hi jsonKeyword                     ctermfg=none    ctermbg=none    cterm=none
hi jsonString                      ctermfg=none    ctermbg=none    cterm=none
hi jsonQuote                       ctermfg=none    ctermbg=none    cterm=none
hi jsonNoise                       ctermfg=none    ctermbg=none    cterm=none
hi jsonKeywordMatch                ctermfg=none    ctermbg=none    cterm=none
hi jsonBraces                      ctermfg=none    ctermbg=none    cterm=none
hi jsonNumber                      ctermfg=none    ctermbg=none    cterm=none
hi jsonNull                        ctermfg=none    ctermbg=none    cterm=none
hi jsonBoolean                     ctermfg=none    ctermbg=none    cterm=none
hi jsonCommentError                ctermfg=none    ctermbg=none    cterm=none

" SQL
hi sqlStatement                    ctermfg=none    ctermbg=none    cterm=none
hi sqlType                         ctermfg=none    ctermbg=none    cterm=none
hi sqlKeyword                      ctermfg=none    ctermbg=none    cterm=none
hi sqlOperator                     ctermfg=none    ctermbg=none    cterm=none
hi sqlSpecial                      ctermfg=none    ctermbg=none    cterm=none
hi mysqlVariable                   ctermfg=none    ctermbg=none    cterm=none
hi mysqlType                       ctermfg=none    ctermbg=none    cterm=none
hi mysqlKeyword                    ctermfg=none    ctermbg=none    cterm=none
hi mysqlOperator                   ctermfg=none    ctermbg=none    cterm=none
hi mysqlSpecial                    ctermfg=none    ctermbg=none    cterm=none

" YAML
hi yamlBlockMappingKey             ctermfg=none    ctermbg=none    cterm=none
hi yamlKeyValueDelimiter           ctermfg=none    ctermbg=none    cterm=none
hi yamlBlockCollectionItemStart    ctermfg=none    ctermbg=none    cterm=none

" XML
hi xmlProcessingDelim              ctermfg=none    ctermbg=none    cterm=none
hi xmlString                       ctermfg=none    ctermbg=none    cterm=none
hi xmlEqual                        ctermfg=none    ctermbg=none    cterm=none
hi xmlAttrib                       ctermfg=none    ctermbg=none    cterm=none
hi xmlAttribPunct                  ctermfg=none    ctermbg=none    cterm=none
hi xmlTag                          ctermfg=none    ctermbg=none    cterm=none
hi xmlTagName                      ctermfg=none    ctermbg=none    cterm=none
hi xmlEndTag                       ctermfg=none    ctermbg=none    cterm=none
hi xmlNamespace                    ctermfg=none    ctermbg=none    cterm=none

" HTML
hi htmlTitle                       ctermfg=none    ctermbg=none    cterm=none
hi htmlH1                          ctermfg=none    ctermbg=none    cterm=none
hi htmlH2                          ctermfg=none    ctermbg=none    cterm=none
hi htmlH3                          ctermfg=none    ctermbg=none    cterm=none
hi htmlH4                          ctermfg=none    ctermbg=none    cterm=none
hi htmlTag                         ctermfg=none    ctermbg=none    cterm=none
hi htmlTagName                     ctermfg=none    ctermbg=none    cterm=none
hi htmlArg                         ctermfg=none    ctermbg=none    cterm=none
hi htmlEndTag                      ctermfg=none    ctermbg=none    cterm=none
hi htmlString                      ctermfg=none    ctermbg=none    cterm=none
hi htmlScriptTag                   ctermfg=none    ctermbg=none    cterm=none
hi htmlBold                        ctermfg=none    ctermbg=none    cterm=none
hi htmlItalic                      ctermfg=none    ctermbg=none    cterm=none
hi htmlBoldItalic                  ctermfg=none    ctermbg=none    cterm=none
hi htmlTagN                        ctermfg=none    ctermbg=none    cterm=none
hi htmlSpecialTagName              ctermfg=none    ctermbg=none    cterm=none
hi htmlComment                     ctermfg=none    ctermbg=none    cterm=none
hi htmlCommentPart                 ctermfg=none    ctermbg=none    cterm=none

" CSS
hi cssIdentifier                   ctermfg=none    ctermbg=none    cterm=none
hi cssPositioningProp              ctermfg=none    ctermbg=none    cterm=none
hi cssNoise                        ctermfg=none    ctermbg=none    cterm=none
hi cssBoxProp                      ctermfg=none    ctermbg=none    cterm=none
hi cssTableAttr                    ctermfg=none    ctermbg=none    cterm=none
hi cssPositioningAttr              ctermfg=none    ctermbg=none    cterm=none
hi cssValueLength                  ctermfg=none    ctermbg=none    cterm=none
hi cssFunctionName                 ctermfg=none    ctermbg=none    cterm=none
hi cssUnitDecorators               ctermfg=none    ctermbg=none    cterm=none
hi cssColor                        ctermfg=none    ctermbg=none    cterm=none
hi cssBraces                       ctermfg=none    ctermbg=none    cterm=none
hi cssBackgroundProp               ctermfg=none    ctermbg=none    cterm=none
hi cssTextProp                     ctermfg=none    ctermbg=none    cterm=none
hi cssDimensionProp                ctermfg=none    ctermbg=none    cterm=none
hi cssClassName                    ctermfg=none    ctermbg=none    cterm=none

" Markdown
hi markdownHeadingRule             ctermfg=none    ctermbg=none    cterm=none
hi markdownH1                      ctermfg=none    ctermbg=none    cterm=none
hi markdownH2                      ctermfg=none    ctermbg=none    cterm=none
hi markdownBlockquote              ctermfg=none    ctermbg=none    cterm=none
hi markdownCodeBlock               ctermfg=none    ctermbg=none    cterm=none
hi markdownCode                    ctermfg=none    ctermbg=none    cterm=none
hi markdownLink                    ctermfg=none    ctermbg=none    cterm=none
hi markdownUrl                     ctermfg=none    ctermbg=none    cterm=none
hi markdownLinkText                ctermfg=none    ctermbg=none    cterm=none
hi markdownLinkTextDelimiter       ctermfg=none    ctermbg=none    cterm=none
hi markdownLinkDelimiter           ctermfg=none    ctermbg=none    cterm=none
hi markdownCodeDelimiter           ctermfg=none    ctermbg=none    cterm=none
hi mkdCode                         ctermfg=none    ctermbg=none    cterm=none
hi mkdLink                         ctermfg=none    ctermbg=none    cterm=none
hi mkdURL                          ctermfg=none    ctermbg=none    cterm=none
hi mkdString                       ctermfg=none    ctermbg=none    cterm=none
hi mkdBlockQuote                   ctermfg=none    ctermbg=none    cterm=none
hi mkdLinkTitle                    ctermfg=none    ctermbg=none    cterm=none
hi mkdDelimiter                    ctermfg=none    ctermbg=none    cterm=none
hi mkdRule                         ctermfg=none    ctermbg=none    cterm=none

" Shell
hi bashStatement                   ctermfg=none    ctermbg=none    cterm=none
hi shDerefVar                      ctermfg=none    ctermbg=none    cterm=none
hi shDerefSimple                   ctermfg=none    ctermbg=none    cterm=none
hi shFunction                      ctermfg=none    ctermbg=none    cterm=none
hi shStatement                     ctermfg=none    ctermbg=none    cterm=none
hi shLoop                          ctermfg=none    ctermbg=none    cterm=none
hi shQuote                         ctermfg=none    ctermbg=none    cterm=none
hi shCaseEsac                      ctermfg=none    ctermbg=none    cterm=none
hi shSnglCase                      ctermfg=none    ctermbg=none    cterm=none
hi shFunctionOne                   ctermfg=none    ctermbg=none    cterm=none
hi shCase                          ctermfg=none    ctermbg=none    cterm=none
hi shSetList                       ctermfg=none    ctermbg=none    cterm=none

" netrw
hi netrwVersion                    ctermfg=none    ctermbg=none    cterm=none
hi netrwList                       ctermfg=none    ctermbg=none    cterm=none
hi netrwHidePat                    ctermfg=none    ctermbg=none    cterm=none
hi netrwQuickHelp                  ctermfg=none    ctermbg=none    cterm=none
hi netrwHelpCmd                    ctermfg=none    ctermbg=none    cterm=none
hi netrwDir                        ctermfg=none    ctermbg=none    cterm=none
hi netrwClassify                   ctermfg=none    ctermbg=none    cterm=none
hi netrwExe                        ctermfg=none    ctermbg=none    cterm=none
hi netrwSuffixes                   ctermfg=none    ctermbg=none    cterm=none
hi netrwTreeBar                    ctermfg=none    ctermbg=none    cterm=none
