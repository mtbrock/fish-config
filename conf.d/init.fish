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

# For building AOSP
set -xg USE_CCACHE 1
set -xg CCACE_DIR ~/.cache/ccache
set -xg ANDROID_JACK_VM_ARGS "-Dfile.encoding=UTF-8 -XX:+TieredCompilation -Xmx4G"

set -xg JAVA_HOME /usr/lib/jvm/java-8-openjdk

#---------------------------------------------
# PATH modifications
#---------------------------------------------
#test -z $TMUX; and set PATH ~/.local/bin ~/android/platform-tools $PATHtest -d ~/android/platform-tools; and set PATH ~/android/platform-tools $PATH
test -z $TMUX; and test -n init_path; and init_path
