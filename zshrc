# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="refined"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(macos colorize asdf)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'

# Commands to show and hide . files in finder
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# Docker Compose alias
alias dc="docker compose"
alias dc-up='docker compose up --build --remove-orphans'
alias dc-bash='docker compose exec web bash'

# Other alias
alias vim="nvim"
alias oldvim="\vim"
alias as="./actions-steven.zsh"
alias zsh-config="nvim ~/.zshrc"
alias zsh-reset="source ~/.zshrc"
alias vim-config="nvim ~/.vimrc"
alias nvim-config="nvim ~/.config/nvim/init.lua"
alias nvim-plugin-config="nvim ~/.config/nvim/lua/custom/plugins/init.lua"
alias tmux-config="nvim ~/.tmux.conf"
alias alacritty-config="vim ~/.config/alacritty/alacritty.toml"
alias al-config="vim ~/.config/alacritty/alacritty.toml"
alias term-config="vim ~/.config/alacritty/alacritty.toml"
alias tmux="tmux -2 -u"
alias tmux-light="tmux source-file ~/dotfiles/tmux/themes/dayfox.conf"
alias tmux-dark="tmux source-file ~/dotfiles/tmux/themes/nightfox.conf"
alias work="cd $HOME/work/rx"

# kubernetes
alias k="kubectl"
alias ks="kubectl --namespace=staging"
alias kp="kubectl --namespace=production"
alias kc="kubectl --namespace=contractresearchmap"

# stuff for Ruby

# work in the future always
# export DEPENDENCIES_NEXT=1

# bundler alias
alias be="bundle exec"
alias bi="bundle install"
alias bu="bundle update"

alias nbe="DEPENDENCIES_NEXT=1 bundle exec"
alias nbi="DEPENDENCIES_NEXT=1 bundle install"
alias nbu="DEPENDENCIES_NEXT=1 bundle update"

# prevents issues with ruby and macos https://github.com/rails/rails/issues/38560
# export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

# Always run inside of tmux
# _not_inside_tmux() { [[ -z "$TMUX" ]] }

# ensure_tmux_is_running() {
  # if _not_inside_tmux; then
    # tat
  # fi
# }

# ensure_tmux_is_running

export ZELLIJ_CONFIG_DIR="$HOME/.config/zellij"
alias zel="zellij"

# use sublime text cli
# export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"

# export PATH=${PATH/':.\/bin'/}

# golang stuff
export GOPATH="$HOME/go"
export GOBIN="$HOME/go/bin"

# remove duplicate paths from path
typeset -aU path

# Mac OS path_helper is nothing but helpful and f's up the PATH var
# these additions force paths that I need to the front

# golang
export PATH="$HOME/go/bin:$PATH"
# deno
export DENO_INSTALL="/Users/stevenmcfarlane/.deno"
export PATH="/Users/stevenmcfarlane/.deno/bin:$PATH"
# rust
export PATH="$HOME/.cargo/env:$PATH"
# Node.js stuff
# pnpm
export PNPM_HOME="/Users/stevenmcfarlane/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# homebrew
eval $(/opt/homebrew/bin/brew shellenv)
# asdf
PATH="$HOME/.asdf/bin:$PATH"
PATH="$HOME/.asdf/shims:$PATH"

# personal
export PATH="$HOME/bin:$PATH"
