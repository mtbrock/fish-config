# Open vim and run Gdiff if possible
function vgd
  nvim -c "exe \
    \"if exists('g:loaded_fugitive') && g:loaded_fugitive | \
    Gdiff | \
    endif\"" $argv
end
