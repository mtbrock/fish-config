function bind_bang
  switch (commandline -t)
  case "!"
    commandline -t $history[1]; commandline -f repaint
  case "*"
    commandline -i !
  end
end

function bind_dollar
  switch (commandline -t)
  case "!"
    commandline -t ""
    commandline -f history-token-search-backward
  case "*"
    commandline -i '$'
  end
end

function fish_user_key_bindings
  bind \cf forward-char
  bind \ef forward-word
  bind ! bind_bang
  bind '$' bind_dollar
  # FZF
  bind \ch '__fzf_find_file'
  bind \cr '__fzf_reverse_isearch'
  bind \eo '__fzf_cd'
  bind \eO '__fzf_cd --hidden'
  bind \cg '__fzf_open'
  bind \co '__fzf_open --editor'
end
