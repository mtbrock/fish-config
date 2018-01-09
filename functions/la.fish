function la --wraps ls --description 'alias la=ls -lah --color'
  set -l LC_COLLATE C
  ls -lah --color $argv
end

