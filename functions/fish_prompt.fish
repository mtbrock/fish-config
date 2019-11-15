function _color
  echo (tput setaf $argv[1])$argv[2](set_color normal)
end

function fish_prompt
  #set name (_color 3 $USER)
  #set hostname (string replace -r '\..+$' '' (hostname))
  #set hostname (_color 31 $hostname)
  set git_branch (git_branch_name)
  test -n "$git_branch"; and set git_branch (_color 8 "["(string sub "$git_branch" -l 8)"]")
  set venv ""
  test -n "$VIRTUAL_ENV"; and set venv (_color 8 "["(basename $VIRTUAL_ENV)"]")
  set prompt (_color 2 (string replace "$HOME" '~' (pwd)))" \$ "
  set name (_color 31 "[$USER]")
  #echo $name on $hostname
  echo "$git_branch""$venv" "$name" $prompt
end
