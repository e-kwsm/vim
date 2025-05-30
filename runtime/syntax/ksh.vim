if exists('b:current_syntax')
  finish
endif

" The actual syntax is in sh.vim and controlled by buffer-local variables.
unlet! b:is_sh
unlet! b:is_bash
let b:is_kornshell = 1

runtime! syntax/sh.vim

let b:current_syntax = 'ksh'

" vim: ts=8
