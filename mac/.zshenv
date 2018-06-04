# Path to your oh-my-zsh installation.
export HOST="Leo-MacBook"
export ZSH=/Users/fuyu0425/.oh-my-zsh
export EDITOR=vim
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="fuyu0425"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="false"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

path=($path /usr/local/sbin $HOME/gocode/bin /usr/local/bin:$HOME/.composer/vendor/bin /usr/local/bin /usr/bin /bin /usr/sbin /sbin)
path=(`yarn global bin` $path)
path+=($HOME/cf_submit)
source $HOME/zsh-common.zsh

plugins+=(brew osx tig)


# User configuration

# export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# phpbrew
export PHPBREW_RC_ENABLE=1
[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc

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

###my own setting###
###################
#export TERM='xterm-256color'
#export TERM='xterm'
#GOPATH
export GOPATH=~/gocode

alias ls='ls -vG'
alias ll='ls -al'
alias la='ls -a'
alias vi='mvim -v'
alias vim='mvim -v'
alias g++='g++-7  -D fuyu0425'
alias gcc='gcc-7  -D fuyu0425'
alias gcov='gcov-7'
#alias ptt='ssh bbsu@ptt.cc'
alias xcode="open -a Xcode"
alias gcz='git cz'
alias rm='rmtrash'
alias sshx='ssh -X'
alias cat='ccat'

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=256" #support 256


# for makefile
export CXX='g++-7'
export CCOV='gcov-7'


homestead(){
    sh -c 'cd ~/Homestead && vagrant "$*"'

}
proxy(){
    export https_proxy=$1
    export http_proxy=$1
    echo "proxy is set to $1"
}
unproxy(){
    unset https_proxy
    unset http_proxy
    echo "proxy is unset"
}


###others
