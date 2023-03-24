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

" nnoremap <silent><leader>1 <Cmd>BufferLineGoToBuffer 1<CR>
" nnoremap <silent><leader>2 <Cmd>BufferLineGoToBuffer 2<CR>
" nnoremap <silent><leader>3 <Cmd>BufferLineGoToBuffer 3<CR>
" nnoremap <silent><leader>4 <Cmd>BufferLineGoToBuffer 4<CR>
" nnoremap <silent><leader>5 <Cmd>BufferLineGoToBuffer 5<CR>
" nnoremap <silent><leader>6 <Cmd>BufferLineGoToBuffer 6<CR>
" nnoremap <silent><leader>7 <Cmd>BufferLineGoToBuffer 7<CR>
" nnoremap <silent><leader>8 <Cmd>BufferLineGoToBuffer 8<CR>
" nnoremap <silent><leader>9 <Cmd>BufferLineGoToBuffer 9<CR>
" nnoremap <silent><leader>$ <Cmd>BufferLineGoToBuffer -1<CR>

" " These commands will navigate through buffers in order
" " regardless of which mode you are using  e.g. if you change
" " the order of buffers :bnext and :bprevious will not respect the custom ordering
" nnoremap <silent><leader>n :BufferLineCycleNext<CR>
" nnoremap <silent><leader>p :BufferLineCyclePrev<CR>
" " These commands will move the current buffer backwards or forwards in the bufferline
" nnoremap <silent><C-b>n :BufferLineMoveNext<CR>
" nnoremap <silent><C-b>p :BufferLineMovePrev<CR>
" " These commands will move the current buffer to the first or the last position in the bufferline
" nnoremap <silent><C-b>1 :lua require'bufferline'.move_to(1)<CR>
" nnoremap <silent><C-b>0 :lua require'bufferline'.move_to(-1)<CR>
" " These commands will sort buffers by directory, language, or a custom criteria
" nnoremap <silent><leader>be :BufferLineSortByExtension<CR>
" nnoremap <silent><leader>bd :BufferLineSortByDirectory<CR>
" nnoremap <silent><leader>ss :lua require'bufferline'.sort_buffers_by(function (buf_a, buf_b) return buf_a.id < buf_b.id end)<CR>



" let g:go_def_mode='gopls'
" let g:go_info_mode='gopls'
" let g:go_fmt_command = "goimports"
" let g:go_highlight_types = 1
" let g:go_highlight_fields = 1
" let g:go_highlight_functions = 1
" let g:go_highlight_operators = 1

" easy run build
" autocmd FileType go nmap <leader>b  <Plug>(go-build)
" easy run
" autocmd FileType go nmap <leader>r  <Plug>(go-run)
" easy run tests
" autocmd FileType go nmap <leader>t  <Plug>(go-test)
" autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=2 shiftwidth=2
