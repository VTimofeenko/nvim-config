augroup json_vimrc
	" UI stuff
	autocmd FileType json
				\  set tabstop=4
				\| set softtabstop=4
				\| set shiftwidth=4
				\| set expandtab
				\| set autoindent
	" bind = to format
	autocmd FileType json vnoremap = %!python -m json.tool<CR>
augroup END
