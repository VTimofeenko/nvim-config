" plugins
source $VT_NVIM_CONFIG_LOCATION/plugins.vimrc
" global settings (no plugins)
source $VT_NVIM_CONFIG_LOCATION/general.vimrc
" plugins global settings
source $VT_NVIM_CONFIG_LOCATION/plugins_settings.vimrc
" filetype global settings
for f in split(glob($VT_NVIM_CONFIG_LOCATION. '/file_specific_configs/*'), '\n')
    exe 'source' f
endfor
