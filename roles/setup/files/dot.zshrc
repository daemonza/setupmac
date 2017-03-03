# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="af-magic"
ZSH_THEME="dracula"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
 ENABLE_CORRECTION="false"

# Uncomment the following line to display red dots whilst waiting for completion.
 COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(stack git autojump)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"
export PATH=$PATH:/usr/local/opt/go/libexec/bin:/Users/wgillmer/Code/Go/bin/
export PATH=$PATH:$HOME/Code/bin

# Go setup
export GOPATH=/Users/wgillmer/Code/Go
export GOROOT=/usr/local/Cellar/go/1.7.1/libexec
export PATH=$PATH:$GOPATH:$GOROOT

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias j=autojump
alias fgrep=fgrep --colour=always

alias vim='nvim'
alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs'
export EDITOR='nvim'

# Stop zsh from auto renaming windows
export DISABLE_AUTO_TITLE="true"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# https://github.com/sjl/z-zsh
# https://github.com/rupa/z
. /Users/wgillmer/Code/bin/z.sh
function precmd () {
   z --add "$(pwd -P)"
}


autoload -U colors && colors

# The next line updates PATH for the Google Cloud SDK.
#source '/Users/wgillmer/Downloads/google-cloud-sdk/path.zsh.inc'
# The next line enables shell command completion for gcloud.
#source '/Users/wgillmer/Downloads/google-cloud-sdk/completion.zsh.inc'
#
# kubernetes settings
source <(kubectl completion zsh)
export CONTEXT=$(kubectl config view | awk '/current-context/ {print $2}')

