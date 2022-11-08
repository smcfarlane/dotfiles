" Config NERDTree
" map <C-a> :NERDTreeToggle<CR>
" let NERDTreeIgnore=['.DS_Store', '*.swp', '*.swo']
" let NERDTreeShowBookmarks=0         "show bookmarks on startup
" let NERDTreeHighlightCursorline=1   "Highlight the selected entry in the tree
" let NERDTreeShowLineNumbers=0
" let NERDTreeMinimalUI=1
" let NERDTreeWinSize=55
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " auto kill nerdtree if it is the only buffer

" Config NERDCommenter
let NERDSpaceDelims=1               " space around delimiters
let NERDRemoveExtraSpaces=3
