augroup todofile_vimrc
	" disable parentheses matching
	autocmd FileType todofile NoMatchParen
	" clean up airline
	autocmd FileType todofile
				\ let g:airline_section_y = "" |
				\ let g:airline_section_error = "" |
				\ let g:airline_section_warning = ""
	" new-day shortcut
	" adds a comment in done section and adds "Followup" item to the to-do section
	autocmd FileType todofile
				\ nmap <leader>nd 'do# <C-R>=strftime("%b %d")<CR><ESC>'toFollow-up stuff<ESC>
augroup END
