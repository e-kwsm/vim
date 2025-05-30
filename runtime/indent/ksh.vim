" Language:	ksh

if exists('b:did_indent')
   finish
endif

" The actual indenting is in sh.vim and controlled by buffer-local variables.
unlet! b:is_sh
unlet! b:is_bash
let b:is_kornshell = 1

runtime! indent/sh.vim
