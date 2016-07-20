if exists("b:current_syntax")
    finish
endif

let b:current_syntax = 'smdl'

syn match   smdlKeyword  "[{}<>&!=,;/?]"
syn keyword smdlKeyword  outexpr input output endpla
syn match   smdlKeyword  /\v<pla\((f|r|fd|dr|fr|fdr)\)/
syn match   smdlPreproc  /^\s*#\s*include/
syn match   smdlString   /"[^"]*"/
syn match   smdlConstant /\<[-01]*\>/
syn match   smdlConstant /\v\[\d+:\d+]/
syn match   smdlComment  "//.*"
syn region  smdlComment  start="/\*" end="\*/"
syn match   smdlPreproc  /\v^ *# *(define|include|if|ifdef|defined|else|endif)>/
syn match   smdlPreproc  /\v\(\*\s*\w+\s*\*\)/

hi def link smdlKeyword  keyword
hi def link smdlPreproc  preproc
hi def link smdlString   string
hi def link smdlConstant constant
hi def link smdlComment  comment
