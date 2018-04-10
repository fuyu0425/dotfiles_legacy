plugins+=(git extract  zsh-autosuggestions sudo  docker  docker-compose z tmux vagrant zsh-syntax-highlighting command-time)
path+=($HOME/bin)
umask 077
# If command execution time above min. time, plugins will not output time.
ZSH_COMMAND_TIME_MIN_SECONDS=1

# Set it to "" for disable echo `time: xx`.
ZSH_COMMAND_TIME_ECHO=1

function git-next() {
    git log --reverse --pretty=%H master | grep -A 1 $(git rev-parse HEAD) | tail -n1 | xargs git checkout
}

function git-prev() {
    git checkout HEAD^1
}
