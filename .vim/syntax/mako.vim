unlet! b:current_syntax
syn include @python syntax/python.vim

syn keyword makoEnd endfor endif enddef endwhile endtry contained
syn region  makoLine  matchgroup=makoDelim start="^\s*%" end="$"     contains=@python,makoEnd
syn region  makoBlock matchgroup=makoDelim start="<%\(!\|\s\|$\)"  end="[/%]>" keepend contains=@python,makoEnd

"syn region makoNested start="{" end="}" transparent display contained contains=makoNested,@python
syn region makoVar matchgroup=makoDelim start="\${" end="}" contains=makoNested,makoIdentifier,@python
syn match makoIdentifier "\<[A-Za-z_]\w*\>" contained

syn region makoComment start="^\s*##" end="$"
syn region makoDocComment matchgroup=makoDelim start="<%doc>" end="</%doc>" keepend

syn region makoTag matchgroup=makoDelim start="<%\(def\|call\|page\|include\|namespace\|inherit\)\>" end="/\?>" contains=makoString
syn match makoDelim "</%\(def\|call\|namespace\)>"
syn match makoString "\"[^"]*\""

hi def link makoEnd        keyword
hi def link makoDelim      type
hi def link makoComment    comment
hi def link makoDocComment comment
hi def link makoTag        identifier
hi def link makoString     string

hi def link makoIdentifier preproc
