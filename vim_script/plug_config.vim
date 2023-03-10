" Plug config
"
" this is where plugins are configured

call plug#begin('~/.config/nvim/plugged')

" Make things nice plugings
Plug 'ntpeters/vim-better-whitespace'   " better-whitespace
" Plug 'jeetsukumaran/vim-buffergator'    " buffergator
Plug 'raimondi/delimitmate'             " delimitmate (automatic bracket closing)
Plug 'scrooloose/nerdcommenter'         " nerdcommenter
Plug 'tpope/vim-repeat'                 " vim repeat
Plug 'tpope/vim-sensible'               " sensible vim defaults
Plug 'tpope/vim-surround'               " surround
Plug 'machakann/vim-highlightedyank'

" git stuff
Plug 'tpope/vim-fugitive'               " fugitive

" IDE features
" neovim now has lsp features built in
Plug 'neovim/nvim-lspconfig'            " language server protocol - configured in lsp-config.lua
Plug 'hrsh7th/nvim-compe'               " Tab complete - configured in compe-config.lua
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons' " optional, for file icons
Plug 'akinsho/bufferline.nvim', { 'tag': 'v3.*' }
Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'branch': '0.1.x' }
Plug 'tpope/vim-obsession'              " Sesson management required by prosession
Plug 'dhruvasagar/vim-prosession'       " Sesson management

" Filetype handling
" Plug 'cespare/vim-toml'                 " toml
Plug 'ekalinin/Dockerfile.vim'          " highlighting for dockerfiles

" HTML and CSS plugins
Plug 'mattn/emmet-vim'                  " emmet
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
" Plug 'chriskempson/base16-vim'          " Base16 themes
Plug 'RRethy/nvim-base16'
Plug 'junegunn/seoul256.vim'            " seoul theme
Plug 'lifepillar/vim-solarized8'
Plug 'morhetz/gruvbox'
Plug 'wadackel/vim-dogrun'
Plug 'nanotech/jellybeans.vim'            " https://github.com/nanotech/jellybeans.vim
Plug 'joshdick/onedark.vim'               " onedark
" Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' } " https://github.com/challenger-deep-theme/vim
" Plug 'nightsense/vim-crunchbang'          " crunchbang theme
" Plug 'lucasprag/simpleblack'              " https://github.com/lucasprag/simpleblack
" Plug 'semibran/vim-colors-synthetic'      " https://github.com/semibran/vim-colors-synthetic
" Plug 'rafalbromirski/vim-aurora'          " https://github.com/rafalbromirski/vim-aurora

" Tmux
" Plug 'tmux-plugins/vim-tmux'            " vim tmux
Plug 'preservim/vimux'                   " vimux, send commands to tmux pane

" Plugins to reconsider later
"
" Plug 'tpope/vim-unimpaired'             " unimpaired

call plug#end()


