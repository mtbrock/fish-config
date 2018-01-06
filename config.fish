# Data directory
set -xg XDG_DATA_HOME ~/.local/share
set -xg XDG_DATA_DIRS "/opt/local/share:/usr/local/share:/usr/share"

# Config directory
set -xg XDG_CONFIG_HOME ~/.config

# Cache directory
set -xg XDG_CACHE_HOME ~/.cache

# History config
set -xg HISTCONTROL erasedups
set -xg HISTSIZE 5000
set -xg HISTFILE "$CACHE_HOME/bash_history"
set -xg LESSHISTFILE "$CACHE_HOME/lesshst"

# npm config file
set -xg NPM_CONFIG_USERCONFIG "$CONFIG_HOME/npmrc"
# Fuck npm
set -xg npm_config_devdir "$CACHE_HOME/npm"
# Node config
set -xg NODE_REPL_HISTORY "$CACHE_HOME/node_repl_history"

# rcm dotfile manager
set -xg RCRC "$CONFIG_HOME/rcrc"

# User vim as default editor
set -xg VISUAL 'vim'
set -xg EDITOR "$VISUAL"

# Set TERM so tmux will properly display vim colors
set -xg TERM 'xterm-256color'

# Syntax highlighting for less. See source-highlight macport.
# Think this also requires lesspipe macport.
set -xg LESSOPEN "| /opt/local/bin/src-hilite-lesspipe.sh %s"
set -xg LESS ' -R '

# Use ccache (for AOSP builds).
set -xg USE_CCACHE 1
set -xg CCACHE_DIR ~/matthew/.ccache

#---------------------------------------------
# PATH modifications
#---------------------------------------------
set -xg JAVA_HOME (/usr/libexec/java_home -v 1.7)
set PATH /opt/local/bin /opt/local/sbin ~/bin ~/Android/android-sdk/tools ~/Android/android-sdk/platform-tools /usr/local/bin $PATH

# Load RVM into a shell session *as a function*.
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
#set -xg PATH "$PATH:$HOME/.rvm/bin"

set -l alias_script $XDG_CONFIG_HOME/fish/aliases.fish
if test -e $alias_script
  source $alias_script
end
