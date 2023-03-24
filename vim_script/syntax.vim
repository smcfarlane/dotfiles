" Syntax Settings

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

set background=dark
" colorscheme seoul256
" colorscheme solarized8_flat
" autocmd vimenter * ++nested colorscheme solarized8_high
colorscheme gruvbox
" colorscheme challenger_deep
" call SetSeoul256()
" colorscheme base16-tomorrow-night
" colorscheme base16-atelier-savanna-light
" colorscheme base16-chalk
" colorscheme base16-atelier-forest
" colorscheme base16-darkmoss
