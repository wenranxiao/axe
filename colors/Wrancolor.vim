" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:	Wran xiaowenran@unitedstack.com
" Last Change:	2016 sep 03

hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "Wrancolor"

hi Normal		ctermbg=Black  ctermfg=White      guibg=Black		 guifg=lightgreen
hi Comment		term=bold	   ctermfg=Red       guifg=Orange
hi Constant		term=underline ctermfg=blue      guifg=White	gui=NONE
hi Identifier	term=underline ctermfg=LightCyan  guifg=#00ffff
hi Ignore					   ctermfg=black	  guifg=bg
hi PreProc		term=underline ctermfg=red   guifg=Wheat
hi Search		term=reverse					  guifg=white	guibg=Blue
hi Special		term=bold	   ctermfg=LightRed   guifg=magenta
hi Statement	term=bold	   ctermfg=green   guifg=#ffff00 gui=NONE
hi Type						   ctermfg=green  guifg=grey	gui=none
hi Error		term=reverse   ctermbg=blue	  ctermfg=White guibg=Red  guifg=White
hi Todo			term=standout  ctermbg=Yellow ctermfg=Black guifg=Blue guibg=Yellow
" From the source:
hi Cursor										  guifg=Orchid	guibg=fg
"hi CursorLine guibg=lightblue guifg=red  ctermbg=dark ctermfg=black
hi CursorColumn guibg=lightblue ctermbg=blue  guifg=white  ctermfg=white 
hi Directory	term=bold	   ctermfg=LightCyan  guifg=Cyan
hi ErrorMsg		term=standout  ctermbg=DarkRed	  ctermfg=White guibg=Red guifg=White
hi IncSearch	term=reverse   cterm=reverse	  gui=reverse
hi LineNr		term=underline ctermfg=yellow          guifg=Yellow
hi ModeMsg		term=bold	   cterm=bold		  gui=bold
hi MoreMsg		term=bold	   ctermfg=blue        gui=bold		guifg=SeaGreen
hi NonText		term=bold	   ctermfg=blue		  gui=bold		guifg=Blue
hi Question		term=standout  ctermfg=blue        gui=bold		guifg=Cyan
hi SpecialKey	term=bold	   ctermfg=blue       guifg=Cyan
hi StatusLine	term=reverse,bold cterm=reverse   gui=NONE		guifg=White guibg=darkblue
hi StatusLineNC term=reverse   cterm=reverse	  gui=NONE		guifg=white guibg=#333333
hi Title		term=bold	   ctermfg=LightMagenta gui=bold	guifg=Pink
hi WarningMsg	term=standout  ctermfg=LightRed   guifg=Red
hi Visual		term=reverse   cterm=reverse	  gui=NONE		guifg=white guibg=darkgreen
