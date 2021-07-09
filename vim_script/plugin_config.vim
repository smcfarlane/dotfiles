" this file is for the small config blocks for plugins
" breakout larger config into its own file

" closetag config
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.qtpl'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
let g:closetag_filetypes = 'html,xhtml,phtml,qtpl'
let g:closetag_xhtml_filetypes = 'xhtml,jsx'
let g:closetag_emptyTags_caseSensitive = 0
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }

" vimux shortcuts
map <leader>vp :VimuxPromptCommand<CR>
map <leader>vl :VimuxRunLastCommand<CR>
map <Leader>vi :VimuxInspectRunner<CR>
map <Leader>vq :VimuxCloseRunner<CR>
map <Leader>vs :VimuxInterruptRunner<CR>
map <Leader>vc :VimuxClearRunnerHistory<CR>
map <Leader>vz :VimuxZoomRunner<CR>

" Change leader key for emmet
let g:user_emmet_leader_key='<C-e>'

" Indent guide configuration
let g:indentLine_char = '|'

" Lightline Config
let g:lightline = {
    \ 'colorscheme': 'wombat',
  \ }
