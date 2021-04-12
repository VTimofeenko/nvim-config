augroup templates
	let skeleton_dir=$VT_NVIM_CONFIG_LOCATION . '/skeletons'
	autocmd BufNewFile *.todofile 0r stdpath('data') . '/plugged/vim-todofile/skeleton.todofile'
	" read my skeleton files
	for ext in ['sh', 'ebuild']
		execute 'autocmd BufNewFile *.' . ext . ' 0r ' . skeleton_dir . '/skeleton.' . ext
	endfor
augroup END
