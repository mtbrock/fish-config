function ll --wraps ls
  set -l LC_COLLATE C
  ls -lhG $argv
end

