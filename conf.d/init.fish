# Setup term for colors
#set -xg TERM xterm-256color

#test -n $INIT_DONE; and echo fuck you; and exit 0
test -n "$INIT_DONE"; and exit 0

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
set PATH ~/bin ~/.local/bin ~/android/platform-tools ~/gcloud/sdk/bin $PATH

set -xg INIT_DONE 'yes'
