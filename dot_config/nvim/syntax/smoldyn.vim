if exists("b:current_syntax")
  finish
endif

let s:cpo_save = &cpo
set cpo&vim

syntax match sdynComment /#.*/
syntax match sdynStatement /^\w\+/
syntax match sdynNumber /[-+]\d\+/
syntax match sdynNumber '\d\+'

setlocal commentstring=#\ %s


hi def link sdynStatement Statement
hi def link sdynComment Comment
hi def link sdynNumber Number

let b:current_syntax = "smoldyn"
