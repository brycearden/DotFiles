:syntax clear

:syntax match xFail2 / FAIL /
:syntax match xWarn /^.*-warn.*$/
:syntax match xError /^.*-error.*$/
:syntax match xFail /^sysenv-fail.*$/
:highlight link xError Error
:highlight link xWarn Error
:highlight link xFail Error
:highlight link xFail2 Error

:syntax match xClocks /@[0-9]\+ [0-9]\+ [0-9]\+/
:highlight link xClocks Special

:syntax match xSysenv /TRACE .*$/
:highlight link xSysenv Label

:syntax match xMemAddr /[\[<][0-9,a-f,A-F]\+[\]>]/
:syntax match xCacheAddr / [0-9,a-f,A-F][0-9,a-f,A-F][0-9,a-f,A-F][0-9,a-f,A-F][0-9,a-f,A-F][0-9,a-f,A-F][0-9,a-f,A-F][0-9,a-f,A-F]\+/
:syntax match xRandom /:[0-9,a-f,A-F]\+/
:highlight link xMemAddr Type
:highlight link xCacheAddr Type
:highlight link xRandom Type

:syntax match xRDiff1 / EIP:.*$/
:syntax match xRDiff2 / FPR[0-9]:.*$/
:syntax match xRDiff3 / XMM[0-9]\+:.*$/
:syntax match xRDiff4 / FPCW:.*$/
:syntax match xRDiff5 / RAX:.*$/
:syntax match xRDiff6 / DR[0-9]\+:.*$/
:syntax match xRDiff7 / MTRR_.*$/
:syntax match xRDiff8 / R[0-9]\+:.*$/
:highlight link xRDiff1 Comment
:highlight link xRDiff2 Comment
:highlight link xRDiff3 Comment
:highlight link xRDiff4 Comment
:highlight link xRDiff5 Comment
:highlight link xRDiff6 Comment
:highlight link xRDiff7 Comment
:highlight link xRDiff8 Comment

:set wrap

":syntax match xSysmod /^sysmod-info: .*$/
":highlight link xSysmod Type


