# Open vim and run Gstatus if possible
function vgs
  nvim -c "exe \
    \"if exists('g:loaded_fugitive') && g:loaded_fugitive | \
    Gstatus | \
    endif\"" $argv
end
