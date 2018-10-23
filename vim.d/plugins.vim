" -*- mode: ruby -*-
" vi: set expandtab : set tabstop=2 :

let s:use_dein = 1

if !&compatible
  set nocompatible
endif

" Prepare .vim dir
let s:vimdir = $HOME . "/.vim"
if has("vim_starting")
  if ! isdirectory(s:vimdir)
    call system("mkdir " . s:vimdir)
  endif
endif

" dein
let s:dein_enabled  = 0
if s:use_dein && v:version >= 704
  let s:dein_enabled = 1

  " Set dein paths
  let s:dein_dir = s:vimdir . '/dein'
  let s:dein_github = s:dein_dir . '/repos/github.com'
  let s:dein_repo_name = "Shougo/dein.vim"
  let s:dein_repo_dir = s:dein_github . '/' . s:dein_repo_name

  if ! isdirectory(s:dein_repo_dir)
    echo "dein is not installed, install now "
    let s:dein_repo = "https://github.com/" . s:dein_repo_name
    echo "git clone " . s:dein_repo . " " . s:dein_repo_dir
    call system("git clone " . s:dein_repo . " " . s:dein_repo_dir)
  endif
  let &runtimepath = &runtimepath . "," . s:dein_repo_dir

  if dein#load_state(s:dein_dir)
    call dein#begin(s:dein_dir)
    " ------------------------------------------ {


    call dein#add('Shougo/dein.vim')

    call dein#add('Shougo/vimproc', {'build': 'make'})

    call dein#add('Shougo/unite.vim', {
      \ 'depends': ['vimproc'],
      \ 'on_cmd': ['Unite'],
      \ 'lazy': 1})

    if has('lua')
      call dein#add('Shougo/neocomplete.vim', {
        \ 'on_i': 1,
        \ 'lazy': 1})
    endif

    call dein#add('Shougo/neosnippet.vim', {
      \ 'depends': ['neocomplete.vim']})

    call dein#add('Shougo/neosnippet-snippets', {
      \ 'depends': ['neocomplete.vim']})

    call dein#add('osyo-manga/vim-monster', {
      \ 'depends': ['neocomplete.vim']})

    call dein#add('Shougo/vimfiler', {'lazy': 1})

    call dein#add('tyru/caw.vim')

    " call dein#add('Yggdroot/indentLine')
    call dein#add('nathanaelkane/vim-indent-guides')

    call dein#add('mhinz/vim-startify')

    call dein#add('thinca/vim-quickrun')

    call dein#add('mattn/emmet-vim')

    call dein#add('bronson/vim-trailing-whitespace')

    call dein#add('AndrewRadev/switch.vim')

    call dein#add('scrooloose/syntastic')

    " call dein#add('tpope/vim-fugitive')
    call dein#add('Townk/vim-autoclose')

    call dein#add('itchyny/lightline.vim')

    call dein#add('szw/vim-tags')
    " call dein#add()
    " call dein#add()

    " ## frontend plugins
    call dein#add('othree/html5.vim')
    call dein#add('hokaccha/vim-html5validator')
    call dein#add('hail2u/vim-css3-syntax')
    call dein#add('pangloss/vim-javascript')
    " call dein#add()

    " ## ruby on rails plugins
    call dein#add('tpope/vim-rails')
    call dein#add('tpope/vim-bundler')
    call dein#add('tpope/vim-endwise')
    call dein#add('vim-ruby/vim-ruby', {'on_ft': 'ruby'})
    call dein#add('todesking/ruby_hl_lvar.vim', {'on_ft': 'ruby'})
    call dein#add('slim-template/vim-slim')
    call dein#add('chase/vim-ansible-yaml')
    " call dein#add()

    " ## elixir plugins
    " call dein#add('elixir-lang/vim-elixir')

    " ## typescript plugins
    call dein#add('leafgarland/typescript-vim')

    " ## go plugins
    call dein#add('fatih/vim-go')

    " ## php plugins
    " call dein#add('stanangeloff/php.vim')
    " call dein#add('dsawardekar/wordpress.vim')
    " call dein#add()
    " call dein#add()
    "

    " ## markdown plugins
    call dein#add('plasticboy/vim-markdown')

    " ## misc plugins
    call dein#add('leshill/vim-json')
    call dein#add('chrisbra/csv.vim')
    call dein#add('junegunn/vim-easy-align')
    call dein#add('easymotion/vim-easymotion')
    call dein#add('editorconfig/editorconfig-vim')
    call dein#add('airblade/vim-gitgutter')
    call dein#add('rhysd/accelerated-jk')
    " call dein#add('osyo-manga/vim-over')
    " call dein#add('tpope/tvim-surround')
    " call dein#add('')
    " call dein#add('')
    " call dein#add('')
    " call dein#add('')

    " ## colorschemes
    call dein#add('cocopon/iceberg.vim')
    call dein#add('sjl/badwolf')
    call dein#add('tomasr/molokai')
    " call dein#add()

    " call dein#add('vobornik/vim-mql4')
    " call dein#add('vobornik/vim-mql4', {'on_ft': 'mq4'})

    " } ------------------------------------------
    call dein#end()
    call dein#save_state()
  endif

  if dein#check_install()
    call dein#install()
  endif
endif

" # plugin settings
if s:dein_enabled && dein#tap("unite.vim")
  nnoremap [unite] <Nop>
  nmap <Leader>u [unite]
  nnoremap <silent> [unite]b :Unite buffer<CR>

  " # unite.vim
  let g:unite_enable_start_insert = 0
  let g:unite_source_history_yank_enable = 1
  let g:unite_source_file_mru_limit = 128
  noremap <C-U><C-F> :UniteWithBufferDir -buffer-name=files file<CR>
  noremap <C-U><C-R> :Unite file_mru<CR>

  if dein#tap("neocomplete.vim")
    " # neocomplete.vim
    let g:acp_enableAtStartup = 0
    let g:neocomplete#enable_at_startup = 1
    let g:neocomplete#enable_smart_case = 1
    let g:neocomplete#sources#syntax#min_keyword_length = 3
    let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

    " # vim-monster
    let g:neocomplete#sources#omni#input_patterns = {
      \  'ruby': '[^. *\t]\.\w*\|\h\w*::'
      \}

    " Define dictionary.
    "let $VIMDICTS = $HOME . '/dotfiles/vim.dicts/'
    "let g:neocomplete#sources#dictionary#dictionaries = {
    "  \ 'default' : '',
    "  \ 'vimshell' : $HOME.'/.vimshell_hist',
    "  \ 'scheme' : $HOME.'/.gosh_completions',
    "  \ 'ruby' : $VIMDICTS . 'ruby.dict',
    "  \ 'jquery' : $VIMDICTS . 'jquery.dict',
    "  \ }
  endif

  let g:indent_guides_enable_on_vim_startup = 1
  let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']
  let g:indent_guides_auto_colors = 0
  let g:indent_guides_guide_size = 1
  let g:indent_guides_start_level = 2
  autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=black
  autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=darkgray

  " # lightline
  set noshowmode
  set laststatus=2
  let g:lightline = {
    \ 'colorscheme': 'wombat',
    \ 'component': {
    \   'readonly': '%{&readonly?"r":""}',
    \ },
    \ 'separator': { 'left': '', 'right': '' },
    \ 'subseparator': { 'left': '|', 'right': '|' }
  \ }

  " # syntastic
  let g:syntastic_always_populate_loc_list = 1
  let g:syntastic_auto_loc_list = 1
  let g:syntastic_check_on_open = 1
  let g:syntastic_check_on_wq = 0

  " # caw.vim
  nmap <Leader>c <Plug>(caw:i:toggle)
  vmap <Leader>c <Plug>(caw:i:toggle)

  " # quickrun
  set splitbelow
  set splitright

  " # indentLine
  " let g:indentLine_char = '|'
  " let g:indentLine_color_term = 240
  " let g:indentLine_color_gui = '#A4E57E'
  " let g:indentLine_color_tty_light = 7 " (default: 4)
  " let g:indentLine_color_dark = 1 " (default: 2)

  " # accelerated_jk
  nmap j <Plug>(accelerated_jk_gj)
  nmap k <Plug>(accelerated_jk_gk)

  " # editorconfig
  let g:EditorConfig_verbose = 0

  " # switch.vim
  let g:switch_mapping = "-"
  "let g:switch_custom_definition = {
  "  \ 'ruby,eruby,haml,slim' : [
  "  \   ['if', 'unless'],
  "  \   ['while', 'until'],
  "  \   ['.blank?', '.present?'],
  "  \   ['include', 'extend'],
  "  \   ['class', 'module'],
  "  \   ['.inject', '.delete_if'],
  "  \   ['.map', '.map!'],
  "  \   ['attr_accessor', 'attr_reader', 'attr_writer'],
  "  \ ],
  "  \ 'rspec': [
  "  \   ['describe', 'context', 'specific', 'example'],
  "  \   ['before', 'after'],
  "  \   ['be_true', 'be_false'],
  "  \   ['get', 'post', 'put', 'delete'],
  "  \   ['==', 'eql', 'equal'],
  "  \   { '\.should_not': '\.should' },
  "  \   ['\.to_not', '\.to'],
  "  \   { '\([^. ]\+\)\.should\(_not\|\)': 'expect(\1)\.to\2' },
  "  \   { 'expect(\([^. ]\+\))\.to\(_not\|\)': '\1.should\2' },
  "  \ ]
  "\ }

  " # vimfiler
  let g:vimfiler_as_default_explorer = 1
  nnoremap ff :VimFiler<ENTER>
endif




" " My Plugins here:
" Plug 'moll/vim-node'
" Plug 'wavded/vim-stylus'
" Plug 'jelera/vim-javascript-syntax'
" Plug 'kchmck/vim-coffee-script'
" Plug 'digitaltoad/vim-jade'
" Plug 'gregsexton/matchtag'
" Plug 'Align'
"
" Plug 'mxw/vim-jsx'
" " javascriptとJSXの2つのファイルタイプを指定する
" au BufRead,BufNewFile *.jsx set filetype=javascript.jsx
"
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
"
"
"
" " Define keyword.
" if !exists('g:neocomplete#keyword_patterns')
"   let g:neocomplete#keyword_patterns = {}
" endif
" let g:neocomplete#keyword_patterns['default'] = '\h\w*'
"
" " Plugin key-mappings.
" inoremap <expr><C-g> neocomplete#undo_completion()
" inoremap <expr><C-l> neocomplete#complete_common_string()
"
" " Recommended key-mappings.
" " <CR>: close popup and save indent.
" inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
" function! s:my_cr_function()
"   return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
"   " For no inserting <CR> key.
"   "return pumvisible() ? "\<C-y>" : "\<CR>"
" endfunction
" " <TAB>: completion.
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" " <C-h>, <BS>: close popup and delete backword char.
" inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
" inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" " Close popup by <Space>.
" "inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"
"
" " Shell like behavior(not recommended).
" "set completeopt+=longest
" "let g:neocomplete#enable_auto_select = 1
" "let g:neocomplete#disable_auto_complete = 1
" "inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"
"
" " Enable omni completion.
" autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
" autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
" autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"
" " Enable heavy omni completion.
" if !exists('g:neocomplete#sources#omni#input_patterns')
"   let g:neocomplete#sources#omni#input_patterns = {}
" endif
" "let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
" "let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
" "let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
"
" " For perlomni.vim setting.
" " https://github.com/c9s/perlomni.vim
" let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
