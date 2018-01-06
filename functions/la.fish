function la --wraps ls
  set -l LC_COLLATE C
  ls -lahG $argv
end

