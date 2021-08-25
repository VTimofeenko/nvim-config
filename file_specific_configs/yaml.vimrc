augroup yaml
	autocmd FileType yaml
				\  set tabstop=2
				\| set softtabstop=2
				\| set shiftwidth=2
				\| set expandtab
				\| set autoindent
				\| set fileformat=unix
				\| set foldmethod=indent
				\| set cursorline cursorcolumn
	" add mapping for jinja2 plugins
	autocmd FileType yaml inoremap {{ {{<Space><Space>}}<Esc>hhha

	" toggle crosshairs mode
	autocmd FileType yaml nmap <leader>c :set cursorline! cursorcolumn!
augroup END
