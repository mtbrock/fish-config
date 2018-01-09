function ll --wraps ls --description 'alias la=ls -lh --color'
  set -l LC_COLLATE C
  ls -lh --color $argv
end

