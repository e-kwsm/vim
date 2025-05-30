" Language:	ksh

if exists('b:did_ftplugin')
  finish
endif

unlet! b:is_sh
unlet! b:is_bash
let b:is_kornshell = 1

runtime! ftplugin/sh.vim ftplugin/sh_*.vim ftplugin/sh/*.vim
