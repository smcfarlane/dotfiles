" Plug config
"
" this is where plugins are configured

call plug#begin('~/.config/nvim/plugged')

" Make things nice plugings
Plug 'ntpeters/vim-better-whitespace'   " better-whitespace
Plug 'jeetsukumaran/vim-buffergator'    " buffergator
Plug 'raimondi/delimitmate'             " delimitmate (automatic bracket closing)
" Plug 'yggdroot/indentline'              " indentline
Plug 'scrooloose/nerdcommenter'         " nerdcommenter
Plug 'tpope/vim-repeat'                 " vim repeat
Plug 'tpope/vim-sensible'               " sensible vim defaults
Plug 'tpope/vim-surround'               " surround
Plug 'machakann/vim-highlightedyank'
" Plug 'tpope/vim-dispatch'               " async shell commands

" git stuff
Plug 'tpope/vim-fugitive'               " fugitive

" IDE features
" neovim now has lsp features built in
Plug 'neovim/nvim-lspconfig'            " language server protocol - configured in lsp-config.lua
Plug 'hrsh7th/nvim-compe'               " Tab complete - configured in compe-config.lua
Plug 'itchyny/lightline.vim'            " lightline
Plug 'scrooloose/nerdtree'              " nerdtree
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " Fuzzy finder
Plug 'junegunn/fzf.vim'                 " Fuzzy finder
Plug 'tpope/vim-obsession'              " Sesson management required by prosession
Plug 'dhruvasagar/vim-prosession'       " Sesson management

" Filetype handling
" Plug 'cespare/vim-toml'                 " toml
Plug 'ekalinin/Dockerfile.vim'          " highlighting for dockerfiles

" HTML and CSS plugins
Plug 'mattn/emmet-vim'                  " emmet
Plug 'hail2u/vim-css3-syntax'           " css3 syntax
Plug 'alvan/vim-closetag'               " close html tags

" JS and TS plugins
Plug 'pangloss/vim-javascript'          " javascript
Plug 'maxmellon/vim-jsx-pretty'         " jsx
Plug 'leafgarland/typescript-vim'       " typescript
" Plug 'ianks/vim-tsx'

" Ruby and Rails plugins
Plug 'tpope/vim-rails'                  " rails
Plug 'vim-ruby/vim-ruby'                " ruby
Plug 'tpope/vim-endwise'                " endwise auto adds 'end' to ruby blocks
" Plug 'slim-template/vim-slim'           " slim template highlighting

" Rust plugins
" Plug 'rust-lang/rust.vim'

" Golang plugins
" Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }

" Themes
Plug 'chriskempson/base16-vim'          " Base16 themes
Plug 'junegunn/seoul256.vim'            " seoul theme
Plug 'lifepillar/vim-solarized8'
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'
" Plug 'jpo/vim-railscasts-theme'           " https://github.com/jpo/vim-railscasts-theme
Plug 'wadackel/vim-dogrun'
" Plug 'nightsense/vim-crunchbang'          " crunchbang theme
" Plug 'lucasprag/simpleblack'              " https://github.com/lucasprag/simpleblack
" Plug 'semibran/vim-colors-synthetic'      " https://github.com/semibran/vim-colors-synthetic
" Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' } " https://github.com/challenger-deep-theme/vim
" Plug 'rafalbromirski/vim-aurora'          " https://github.com/rafalbromirski/vim-aurora
Plug 'nanotech/jellybeans.vim'            " https://github.com/nanotech/jellybeans.vim
Plug 'joshdick/onedark.vim'               " onedark

" Tmux
" Plug 'sjl/vitality.vim'                 " vitality, make vim and tmux play nice together
" Plug 'tmux-plugins/vim-tmux'            " vim tmux
Plug 'preservim/vimux'                   " vimux, send commands to tmux pane

" Plugins to reconsider later
"
" Plug 'ctrlpvim/ctrlp.vim'               " ctrlp
" Plug 'gregsexton/matchtag'              " matchtag, for html tag
" Plug 'flazz/vim-colorschemes'           " colorschemes
" Plug 'tpope/vim-unimpaired'             " unimpaired
" Plug 'sjl/gundo.vim'                    " gundo

call plug#end()


