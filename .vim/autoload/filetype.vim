augroup filetypedetect
au BufNewFile,BufRead *.log     setf log
au BufNewFile,BufRead *.sum     setf log
au BufNewFile,Bufread *.trk     setf trk
au BufNewFile,Bufread *.list    setf trk
au BufNewFile,Bufread *.citrus  setf citrus
au BufNewFile,BufRead *.cpp     setf cpp
au BufNewFile,BufRead *.h       setf cpp
au BufNewFile,BufRead *.v       setf systemverilog
au BufNewFile,BufRead *.pkg     setf systemverilog
au BufNewFile,BufRead *.svi     setf systemverilog
au BufNewFile,BufRead *.svh     setf systemverilog
au BufNewFile,BufRead *.svp     setf systemverilog
au BufNewFile,BufRead ncv.log   setf systemverilog
au BufNewFile,BufRead vcs.log   setf systemverilog
au BufNewFile,BufRead *.ic      setf icavp
au BufNewFile,BufRead *.avp     setf icavp
au BufNewFile,BufRead *.ylist   setf yaml
au BufNewFile,BufRead Tupfile   setf tup
au BufNewFile,BufRead *.tup     setf tup
au BufNewFile,BufRead *.ypp     setf yacc
" MAKO
au BufNewFile,BufRead *.tv      setf systemverilog
au BufNewFile,BufRead *.tsv     setf systemverilog
au BufNewFile,BufRead *.tsvh    setf systemverilog
au BufNewFile,BufRead *.tpkg    setf systemverilog
au BufNewFile,BufRead *.tsmdl   setf smdl
augroup END
