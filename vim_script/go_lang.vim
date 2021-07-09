" Go Lang Specific helpers

function DetectGoHtmlTmpl()
  if expand('%:e') == "gohtml"
    set filetype=html
  endif
endfunction

augroup filetypedetect
    au! BufRead,BufNewFile * call DetectGoHtmlTmpl()
augroup END
