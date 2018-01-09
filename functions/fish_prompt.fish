function _color
  echo (tput setaf $argv[1])$argv[2](set_color normal)
end

function fish_prompt
  set name (_color 3 $USER)
  set hostname (string replace -r '\..+$' '' (hostname))
  set hostname (_color 31 $hostname)
  set prompt (_color 2 (string replace "$HOME" '~' (pwd)))" \$ "
  echo $name on $hostname
  echo $prompt
end
