" Syntax Settings

if has('nvim') || has('termguicolors')
  set termguicolors
endif

" change cursor in insert mode
" insert mode - line
let &t_SI .= "\<Esc>[5 q"
"replace mode - underline
let &t_SR .= "\<Esc>[4 q"
"common - block
let &t_EI .= "\<Esc>[3 q"

syntax enable
let base16colorspace=256
set termguicolors

" For when slim highlighting doesn't work
autocmd BufNewFile,BufRead *.slim set ft=slim

function! SetSeoul256()
  "   Range:   233 (darkest) ~ 239 (lightest)
  "   Default: 237
  let g:seoul256_background = 233
  colorscheme seoul256
endfunction

function! SetSeoul256Light()
  "   Range:   252 (darkest) ~ 256 (lightest)
  "   Default: 253
  let g:seoul256_background = 252
  colorscheme seoul256-light
endfunction

function! SetColors()
  " colorscheme challenger_deep
  colorscheme base16-tomorrow-night
endfunction
