function gignore
  for f in $argv; echo $f >> (git rev-parse --show-toplevel)/.gitignore; end
end
