augroup confluencewiki_vimrc
	" UI
	autocmd FileType confluencewiki
				\  colorscheme pencil
				\| AirlineToggleWhitespace
				\| hi Normal ctermbg=None
	" links macro
	autocmd FileType confluencewiki
				\  vmap ] S]%
				\| vmap ]\ ]hi<Bar>
				\| nmap <C-b> ysiw*

	" image pasting
	autocmd FileType confluencewiki
				\  let g:mdip_imgdir = ''
				\| let g:mdip_behavior = 'confluencewiki'
				\| nmap <buffer><silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>
augroup END
" TagBar
let g:tagbar_type_confluencewiki = {
			\ 'ctagstype' : 'confluencewiki',
			\ 'ctagsbin' : '/usr/bin/ctags',
			\ 'ctagsargs' : '--sort=no -o - --options=' . $VT_NVIM_CONFIG_LOCATION . '/plugins/confluencewiki.ctags --fields=nksaSmt',
			\ 'kinds' : [
				\ 'o:h1:level one header',
				\ 't:h2:level two header',
				\ 'T:h3:level three header',
				\ 'f:h4:level four header',
				\ 'i:h5:level five header',
				\ 's:h6:level six header',
			\ ],
			\ 'sro' : '»',
			\ 'kind2scope' : {
				\ 'o': 'h1',
				\ 't': 'h2',
				\ 'T': 'h3',
				\ 'f': 'h4',
				\ 'i': 'h5',
				\ 's': 'h6',
			\ },
			\ 'sort': 0
			\}
