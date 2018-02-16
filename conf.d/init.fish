# Setup term for colors
#set -xg TERM xterm-256color

# Data directory
set -xg XDG_DATA_HOME ~/.local/share
set -xg XDG_DATA_DIRS "/usr/local/share:/usr/share"

# Config directory
set -xg XDG_CONFIG_HOME ~/.config

# Cache directory
set -xg XDG_CACHE_HOME ~/.cache

# Less history config
set -xg LESSHISTFILE "$CACHE_HOME/lesshst"

# Use vim as default editor
set -xg VISUAL 'nvim'
set -xg EDITOR "$VISUAL"

#---------------------------------------------
# PATH modifications
#---------------------------------------------
test -z $TMUX; and set PATH ~/.local/bin $PATH
