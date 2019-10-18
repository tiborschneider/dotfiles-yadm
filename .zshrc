# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export RUST_SRC_PATH=/home/tibor/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src

# Path to your oh-my-zsh installation.
ZSH=/home/tibor/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
DEFAULT_USER="tibor@tibor_arch_pc"
#ZSH_THEME="custom"

# ZSH_THEME="bullet-train"
# BULLETTRAIN_GIT_BG=green
# BULLETTRAIN_EXEC_TIME_ELAPSED=1
# BULLETTRAIN_STATUS_EXIT_SHOW=1
# BULLETTRAIN_PROMPT_ORDER=(
#     status
# 	time
#     cmd_exec_time
# 	git
# 	dir
# )

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"
#
export TERM="xterm-256color"
#export LC_CTYPE="de_CH.UTF-8"
#export LC_ALL="de_CH.UTF-8"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
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
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-autosuggestions
  zsh-auocompletions
  autojump
)

#ZSH autocompletions
autoload -Uz compinit
compinit

# kitty setup
kitty + complete setup zsh | source /dev/stdin

#autojump
source ~/.oh-my-zsh/plugins/autojump.zsh

# disable ctrl-d for exit
setopt ignore_eof

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias zshconfig="nvim ~/.zshrc"
alias i3config="nvim ~/.config/i3/config"
alias vimconfig="nvim ~/.config/nvim/init.vim"
alias nvimconfig=vimconfig
alias alacrittyconfig="nvim ~/.config/alacritty/alacritty.yml"
alias vim=nvim
alias mutt=neomutt
alias pbar="~/.config/polybar/run_polybar.sh"
alias dotdrop=~/dotfiles/dotdrop.sh --cfg=~/dotfiles/config.yaml
alias dot=dotdrop
alias dotconfig="nvim ~/dotfiles/config.yaml"
alias pokemon="visualboyadvance-m ~/Documents/gba/pokemon_fireRed.zip"
alias em="emacsclient -c"
alias emconfig="emacsclient -c ~/.emacs.d/config.org"
alias gitgraph="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
alias vpn="/home/tibor/.config/script/ethvpn.sh"
# alias ls="lsd"
# alias la="lsd --long --all"


#### Git SSH Settings
export GIT_SSH_COMMAND="ssh -i ~/.ssh/id_rsa -F /dev/null"
#export GIT_TRACE=1
#export GIT_SSH='~/.ssh/ssh'

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh

# theme
source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status user dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time) #(status command_execution_time time)
POWERLEVEL9K_SHORTEN_STRATEGY='truncate_from_right'
POWERLEVEL9K_DIR_SHOW_WRITABLE=true
POWERLEVEL9K_SHORTEN_DIR_LENGTH=4
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0.1
POWERLEVEL9K_COMMAND_EXECUTION_TIME=2
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='yellow'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='black'
POWERLEVEL9K_STATUS_CROSS=true
POWERLEVEL9K_STATUS_OK=false
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_COLOR_SCHEME='dark'
POWERLEVEL9K_USER_DEFAULT_BACKGROUND="13"
POWERLEVEL9K_USER_DEFAULT_FOREGROUND="white"
POWERLEVEL9K_USER_SUDO_BACKGROUND="red"
POWERLEVEL9K_USER_SUDO_FOREGROUND="white"
POWERLEVEL9K_USER_ROOT_BACKGROUND="red"
POWERLEVEL9K_USER_ROOT_FOREGROUND="white"

pacman -Qu || true

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi
