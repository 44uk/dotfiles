nnoremap ; :
nnoremap : ;

" <>インデント後も選択を継続
vnoremap < <gv
vnoremap > >gv

" Insert モード中でも <C-*> で移動したい
inoremap <Leader>a <Home>
inoremap <C-e> <End>
inoremap <C-d> <Del>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-j> <Down>
inoremap <C-h> <Left

" ウィンドウ移動
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-h> <C-w>h

" esc 連打でハイライト検索解除
"noremap <Esc><Esc> :nohlsearch<Return><Esc

