" Maps double-tap of '-' to endash
function! MapEndash()
	imap -- –
	imap --<Space> –<Space>
endfunction

" autogroup that applies common settings to prose
augroup common_prose_vimrc
	for my_filetype in ['markdown', 'confluencewiki', 'vimwiki', 'mail']
		execute 'autocmd FileType ' . my_filetype . ' call MapEndash()'
		execute 'autocmd FileType ' . my_filetype . ' setlocal spell! spelllang=en_us'
	endfor
augroup END
