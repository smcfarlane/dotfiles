" Syntax Settings

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
" autocmd BufNewFile,BufRead *.slim set ft=slim

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
  " set background=light
  " autocmd vimenter * ++nested colorscheme solarized8_high
  " colorscheme base16-tomorrow-night
  " colorscheme gruvbox
  " colorscheme challenger_deep
  " colorscheme railscasts
  " colorscheme base16-tomorrow-night
  " call SetSeoul256()
  " colorscheme base16-atelier-savanna-light
  colorscheme base16-chalk
endfunction
