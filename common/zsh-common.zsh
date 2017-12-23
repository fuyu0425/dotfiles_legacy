plugins+=(git extract  zsh-autosuggestions sudo  docker  docker-compose z tmux vagrant zsh-syntax-highlighting command-time)
path+=($HOME/bin)
umask 077
# If command execution time above min. time, plugins will not output time.
ZSH_COMMAND_TIME_MIN_SECONDS=1

# Set it to "" for disable echo `time: xx`.
ZSH_COMMAND_TIME_ECHO=1
