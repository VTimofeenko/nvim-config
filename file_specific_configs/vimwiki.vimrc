augroup vimwiki_vimrc
	autocmd FileType vimwiki
		\ hi Normal ctermbg=None
	autocmd FileType vimwiki
		\  nmap <leader>wv  :VimwikiVSplitLink<CR>
		\| nmap <leader>wj  :VimwikiSplitLink<CR>
augroup END

" TagBar
let g:tagbar_type_vimwiki = {
			\ 'ctagstype':'vimwiki',
			\ 'kinds':['h:header'],
			\ 'sro':'&&&',
			\ 'kind2scope':{'h':'header'},
			\ 'sort':0,
			\ 'ctagsbin': $VT_NVIM_CONFIG_LOCATION . '/plugins/vimwiki-tag.py',
			\ 'ctagsargs': 'default',
			\ }
