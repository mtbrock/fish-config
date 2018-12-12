# All abbreviations here are (pretty) agnostic. Abbreviations for specific
# machines are kept in their own files.
if not set -q _abbrs_initialized

  # misc
  abbr -a -U -- sudovi sudoedit
  abbr -a -U -- x exit
  abbr -a -U -- dockerip docker\ ps\ -q\ \|\ xargs\ -n\ 1\ docker\ inspect\ --format\ \'\{\{range\ .NetworkSettings.Networks\}\}\{\{.IPAddress\}\}\{\{end\}\}\ \{\{\ .Name\ \}\}\'\ \|\ sed\ \'s/\ \\//\ /\'

  # git
  abbr -a -U -- ga 'git add'
  abbr -a -U -- gb 'git branch'
  abbr -a -U -- gc 'git commit'
  abbr -a -U -- gd 'git diff'
  abbr -a -U -- gh 'git hist'
  abbr -a -U -- gl 'git log'
  abbr -a -U -- go 'git checkout'
  abbr -a -U -- gs 'git status'
  abbr -a -U -- gsv 'nvim (git rev-parse --show-toplevel)/.git/index'
  abbr -a -U -- gcd 'cd (groot)'

  # neovim
  abbr -a -U -- mvim nvim
  abbr -a -U -- nvim nvim

  # vim
  abbr -a -U -- vi '/usr/bin/env vim'
  abbr -a -U -- vim nvim

  # pacman
  abbr -a -U -- pac 'sudo pacman -S'
  abbr -a -U -- pacr 'sudo pacman -Rs'
  abbr -a -U -- pacs 'pacman -Ss'
  abbr -a -U -- pacsave 'pacman -Qqe > ~/maintenance/pkglist.txt'
  abbr -a -U -- syu 'sudo pacman -Syu'

  set -gx _abbrs_initialized
end
