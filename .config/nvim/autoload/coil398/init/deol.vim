function! coil398#init#deol#hook_add() abort
    nnoremap <silent> N :<C-u>call deol#new({'command': 'zsh'})<CR>
    nnoremap <silent> [vimshell]s :<C-u>Deol zsh<CR>
    nnoremap <silent> [vimshell]d :<C-u>call deol#kill_editor()<CR>
endfunction
