" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if has('vim_starting')
	if &compatible
		set nocompatible
	endif
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
NeoBundle 'tomasr/molokai'
NeoBundle 'sjl/badwolf'

NeoBundle 'tpope/vim-rails'
NeoBundle 'basyura/unite-rails'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'wavded/vim-stylus'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'digitaltoad/vim-jade'
NeoBundle 'slim-template/vim-slim'
NeoBundle 'moll/vim-node'

NeoBundle 'nathanaelkane/vim-indent-guides'
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=236
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=240
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1

NeoBundle 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

NeoBundle 'mhinz/vim-startify'

NeoBundle 'thinca/vim-quickrun'

NeoBundle 'mattn/emmet-vim'

NeoBundle 'scrooloose/nerdcommenter.git'

NeoBundle 'Align'

NeoBundle 'tpope/vim-endwise'

NeoBundle 'Townk/vim-autoclose'

NeoBundle 'editorconfig/editorconfig-vim'
let g:EditorConfig_verbose = 1

NeoBundle 'Shougo/unite.vim'
let g:unite_enable_start_insert = 0
let g:unite_source_history_yank_enable = 1
let g:unite_source_file_mru_limit = 64

NeoBundle 'Shougo/vimfiler'
let g:vimfiler_as_default_explorer = 1
nnoremap ff :VimFiler<ENTER>

NeoBundle 'Shougo/neocomplcache'
let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

let g:neocomplcache_dictionary_filetype_lists = {
	\ 'default' : ''
	\ }

inoremap <expr><C-g> neocomplcache#undo_completion()
inoremap <expr><C-l> neocomplcache#complete_common_string()

inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
	return neocomplcache#smart_close_popup() . "\<CR>"
endfunction
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS>  neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y> neocomplcache#close_popup()
inoremap <expr><C-e> neocomplcache#cancel_popup()

call neobundle#end()

filetype plugin indent on
NeoBundleCheck
