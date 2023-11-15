"AUTHOR: Mohammed Shahid

set background=dark

highlight clear
if exists("syntax_on")
	syntax reset
endif

let g:colors_name="Anya"
" highlight! Default guifg=#d6b48b guibg=#1d1213 gui=NONE
" link to normal does not work here for some reason...
" highlight! Normal guifg=#edceab guibg=#042327 gui=NONE


" highlight! Normal guifg=#d6b48b guibg=#1e1e1e gui=NONE
highlight! Normal guifg=#d6b48b guibg=#282828 gui=NONE

" highlight! Comment guifg=#31B72C guibg=NONE gui=NONE

highlight! Comment guifg=#928374 guibg=NONE gui=NONE
" highlight! Comment guifg=#abd567 guibg=NONE gui=NONE
" highlight! Comment guifg=#abc123 guibg=NONE gui=NONE

highlight! link Constant Statement
highlight! String guifg=#2ca198 guibg=NONE gui=None
highlight! link Character Number
highlight! Number guifg=#70c5bf guibg=NONE gui=NONE
highlight! link Boolean Number
highlight! link Float Number

highlight! link Identifier Default
" highlight!  Function guifg=#F11001

highlight! Statement guifg=#ebdbdb guibg=NONE gui=NONE

" highlight! Statement		 guifg=#abd567 guibg=NONE gui=NONE
highlight! Type 				 guifg=#abd567 guibg=None gui=None

" highlight! Type							 guifg=#abd567 guibg=NONE gui=NONE
" highlight! Statement 				 guifg=#ebdbdb guibg=None gui=None

"highlight! link Conditional Statement
"highlight! link Repeat Statement
"highlight! link Label Statement
highlight! link Operator Default
"highlight! link Keyword Statement
"highlight! link Exception Statement

highlight! PreProc guifg=#ebdbdb guibg=NONE gui=NONE
highlight! Include guifg=#2ca198 guibg=NONE gui=None
highlight! Macro guifg=#ebdbdb guibg=NONE gui=None

" highlight link Include PreProc
" highlight link Define PreProc
"highlight link Macro PreProc
"highlight link PreCondit PreProc

" highlight! link Type PreProc
" highlight!  Type guifg=#ebdbdb guibg=None gui=underline
"highlight! link StorageClass Type
"highlight! link Structure Type
"highlight! link Typedef Type

highlight! link Special Default
highlight! link SpecialChar String
"highlight! link Tag Special
"highlight! link Delimiter Special
highlight SpecialComment guifg=#87875f guibg=NONE gui=reverse
"highlight! link Debug Special

highlight Underlined guifg=#af5f5f guibg=NONE gui=NONE

"highlight Ignore guifg=#af5f5f guibg=NONE gui=NONE

"highlight Error guifg=#af5f5f guibg=NONE gui=NONE

highlight! link Todo Comment

highlight link Title Default
"highlight htmlStatement guifg=#878787 guibg=NONE gui=NONE
"highlight htmlItalic guifg=#dfaf87 guibg=NONE gui=NONE
"highlight htmlArg guifg=#875f5f guibg=NONE gui=NONE
"highlight cssIdentifier guifg=#dfaf87 guibg=NONE gui=NONE
"highlight cssClassName guifg=#dfaf87 guibg=NONE gui=NONE

" C#
highlight! link csEndColon Default
highlight! link csLogicSymbols Default

" Window UI
highlight Cursor             guifg=#000000       guibg=#dfdfaf      gui=NONE
highlight MoreMsg            guifg=#dfaf87       guibg=NONE         gui=NONE
highlight Visual             guifg=#dfdfaf       guibg=#888888      gui=NONE
highlight Question           guifg=#875f5f       guibg=NONE         gui=NONE
highlight Search             guifg=#dfdfaf       guibg=#878787      gui=NONE
highlight PmenuSel           guifg=#dfdfaf       guibg=#875f5f      gui=NONE
highlight MatchParen         guifg=#dfdfaf       guibg=#875f5f      gui=NONE
highlight VertSplit          guifg=#000000       guibg=NONE         gui=NONE
" highlight! EndOfBuffer       guifg=#042327       guibg=#042327      gui=NONE


" hi! LineNr guifg=#d6b48b guibg=#282828
" hi! Normal guibg=#1e1e1e
" hi! LineNr guifg=#d6b48b guibg=#282828
hi! cursorLineNr  guifg=#fabd1f
" hi! cursorLineNr  guifg=#d6b48b
hi! LineNr ctermfg=243 guifg=#7c6f64
" hi! LineNr guibg=None
" hi EndOfBuffer guifg=#282828

hi! CursorLine guibg=None
hi Nontext guifg=bg
