" =============================================================================
" Filename: autoload/lightline/colorscheme/enlighten.vim
" Author: Melanie Berkley
" License: BSD 2-clause
" Version: 0.1.0
" =============================================================================
" This is for use with itchyny/lightline.vim
" 0
let s:black = "#000000"
" 1
let s:red = "#C73461"
" 3
let s:yellow = "#ED6237"
"6
let s:cyan = "#367E7F"
" 7
let s:white = "#A3AFB6"
" 12
let s:bright_blue = '#5BA5EF'
" 13
let s:bright_magenta = "#EC5281"
" 16
let s:bright_white = "#F5F5F5"

let s:tabline_active_fg = s:black
let s:tabline_inactive_fg = s:black
let s:tabline_inactive_bg = s:white
let s:tabline_bg = s:bright_white
let s:tabline_active_bg = s:bright_white

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:black, s:bright_white ], [ s:black, s:bright_white ], [ s:black, s:bright_white ] ]
let s:p.normal.right = [ [ s:black, s:bright_white ], [ s:black, s:bright_white ], [ s:black, s:bright_white ] ]
let s:p.normal.middle = [ [ s:bright_white, s:bright_white ]]
let s:p.inactive.right = [ [ s:black, s:bright_white ], [ s:black, s:bright_white ] ]
let s:p.inactive.left = [ [ s:black, s:bright_white ], [ s:black, s:bright_white ] ]
let s:p.inactive.middle = [ [ s:black, s:bright_white ], ]
let s:p.insert.left = [ [ s:bright_white, s:bright_magenta ], [ s:black, s:bright_white ], [ s:bright_white, s:black ] ]
let s:p.replace.left = [ [ s:bright_white, s:red ], [s:black, s:bright_white ], [ s:bright_white, s:black ] ]
let s:p.visual.left = [ [ s:bright_white, s:bright_blue ], [s:black, s:bright_white ], [ s:bright_white, s:black ] ]
let s:p.tabline.left = [ [s:tabline_inactive_fg, s:tabline_inactive_bg ]]
let s:p.tabline.tabsel = [ [s:tabline_active_fg, s:tabline_active_bg ] ]
let s:p.tabline.middle = [ [s:tabline_bg, s:tabline_bg]]
let s:p.tabline.right = copy(s:p.normal.right)
let s:p.normal.error = [ [ s:bright_white, s:yellow ] ]
let s:p.normal.warning = [ [ s:bright_white, s:cyan ] ]

let g:lightline#colorscheme#enlighten#palette = lightline#colorscheme#fill(s:p)
