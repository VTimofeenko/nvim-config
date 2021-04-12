augroup shell_vimrc
	autocmd BufRead,BufNewFile *.sh set filetype=sh
	" standard
	autocmd FileType sh,zsh
				\  set tabstop=4
				\| set softtabstop=4
				\| set shiftwidth=4
				\| set expandtab
				\| set autoindent
				\| set fileformat=unix
				\| set foldmethod=indent
	" plugins
	autocmd FileType sh
				\  set statusline+=%#warningmsg# |
				\| set statusline+=%{SyntasticStatuslineFlag()}
				\| set statusline+=%*
				\| let g:syntastic_always_populate_loc_list = 1
				\| let g:syntastic_sh_shellcheck_args = "--external-sources --source-path=."
				\| let g:syntastic_auto_loc_list = 1
				\| let g:syntastic_check_on_open = 1
				\| let g:syntastic_check_on_wq = 0
augroup END
