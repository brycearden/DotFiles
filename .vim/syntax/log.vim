"Drop into your ~/.vim/syntax/ folder in place of your current log.vim
"Written by plowry
"Last updated Sept 2nd 2014

if exists("b:current_syntax")
	finish
endif

:syntax match xError /^\S\+-error\>.*$/
:syntax match xErrorSysv /^.*\[error\].*$/
:syntax match xFail /^\S\+-fail\>.*$/
:syntax match xFail2 /^.*\<FAIL\>.*$/
:syntax match xWarn2 /^\c.*WARNING\>.*$/
:highlight link xError Error
:highlight link xErrorSysv Error
:highlight link xFail Error
:highlight link xFail2 Error
:highlight link xWarn2 Error

:syntax match xWarn /^\S\+-warn\>.*$/
:highlight link xWarn WarningMsg

:syntax region xLoad start=/+load:/ skip=/\\ / end=/\( \@=\|$\)/
:highlight link xLoad Underlined

:syntax match xClocks /\s\@<=@\s*\d\+\(\s\+\d\+\>\)\{,2}/
:syntax match xClocks2 /^@\s*\d\+\(\s\+\d\+\>\)\{,2}/
:highlight link xClocks Special
:highlight link xClocks2 Special

" Typically a green color
:syntax match xKnownHex /\([0-9a-fA-FxXzZ]\@<!0x\)\?[0-9A-Fa-f_]\+/ contained
:highlight link xKnownHex StorageClass
" Same thing, but a different color
:syntax match xKnownHex2 /\([0-9a-fA-FxXzZ]\@<!0x\)\?[0-9A-Fa-f_]\+/ contained
:highlight link xKnownHex2 Identifier
" Warning color
:syntax match xUnknownHex /[xXzZ]/ contained
:highlight link xUnknownHex WarningMsg

:syntax region xAddrOrData start=/\(@\s*\|[0-9a-fA-FxXzZ]\)\@<!\(\(0x\)\?[0-9a-fA-FxXzZ]\{8}\)\@=/ end=/[0-9a-fA-FxXzZ]\@!/ contains=xKnownHex,xUnknownHex 
:syntax region xAddrOrData2 start=/\(@\s*\|[0-9a-fA-FxXzZ]\)\@<!\(\(0x\)\?[0-9a-fA-FxXzZ]\{8}\)\@=/ end=/[0-9a-fA-FxXzZ]\@!/ contains=xKnownHex2,xUnknownHex contained

:syntax region xRegDisplay start=/\(\<\w\+:\)\@<=[0-9a-fA-FxXzZ]\@=/ end=/[0-9a-fA-FxXzZ]\@!/ contains=xKnownHex,xUnknownHex contained
:syntax region xRegDisplay2 start=/\(\<\w\+:\)\@<=[0-9a-fA-FxXzZ]\@=/ end=/[0-9a-fA-FxXzZ]\@!/ contains=xKnownHex2,xUnknownHex contained

:syntax region xCDiffCacheAddr matchgroup=xCDiff start=/{\s*s/ end=/}/ contains=xKnownHex2 contained
:highlight link xCDiffCacheAddr xCDiff
:syntax region xCDiff start=/^cdiff\>/ end=/$/ contains=xClocks,xCDiffCacheAddr,xAddrOrData keepend
:highlight link xCDiff Comment

:syntax region xRDiff start=/^rdiff\>/ end=/$/ contains=xClocks,xRegDisplay2,xAddrOrData keepend
:highlight link xRDiff Comment

:syntax match xTDiffKnownHex /\([0-9a-fA-FxXzZ]\@<!0x\)\?[0-9A-Fa-f_]\+/ contained
:highlight xTDiffKnownHex ctermfg=105
:syntax region xTDiffRegDisplay start=/\(\<\w\+:\)\@<=[0-9a-fA-FxXzZ]\@=/ end=/[0-9a-fA-FxXzZ]\@!/ contains=xTDiffKnownHex,xUnknownHex contained
:syntax region xTDiffCacheAddr matchgroup=xTDiff start=/{\s*s/ end=/}/ contains=xKnownHex2 contained
:highlight link xTDiffCacheAddr xTDiff
:syntax region xTDiff start=/^\(tdiff\|TablewalkDebug\)\>/ end=/$/ contains=xClocks,xTDiffCacheAddr,xTDiffRegDisplay keepend
:highlight xTDiff ctermfg=63

:syntax region xXDiff start=/^xdiff\>\+/ end=/$/ contains=xClocks keepend
:highlight link xXDiff WarningMsg

":syntax region xOtherDiff start=/^[^ \tc]\+diff\>\+/ end=/$/ contains=xClocks,xAddrOrData keepend
":highlight link xOtherDiff Comment

:syntax match xTrace /\<TRACE .*$/
:highlight xTrace ctermfg=3

:syntax region xBusInfo start=/\<beat \(code \|data \|\d\+ \)\?\(read\|write\)\>/ end=/$/ contains=xRegDisplay,xAddrOrData keepend
:syntax region xBusInfo start=/\<Response to address\>/ end=/$/ contains=xRegDisplay,xAddrOrData keepend

:syntax region xL2Debug start=/\<l2debug\>\@=/ end=/$/ contains=xAddrOrData keepend
:highlight xL2Debug ctermfg=244

":syntax match xSysmod /^sysmod-info: .*$/
":highlight link xSysmod Type


let b:current_syntax = "log"
