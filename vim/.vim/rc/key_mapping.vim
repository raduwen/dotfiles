"===============================================================================
" Key Mapping: "{{{1

nnoremap <space> :
vnoremap <space> :

inoremap <c-f> <esc>
inoremap <expr> j  getline('.')[col('.') - 2] ==# 'j' ? "\<BS>\<ESC>" : 'j'

cmap <c-h> <left>
cmap <c-l> <right>
cmap <c-e> <end>
cmap <c-a> <home>

nnoremap M `
" Fix Current buffer indent.
nnoremap <Tab>= ggvG=2<C-o>

" Switch buffer.
nnoremap <C-q> <C-^>

" Continuously increment/decrement
vnoremap <C-a> <C-a>gv
vnoremap <C-x> <C-x>gv

nnoremap [mybind] Nop
nmap <C-e> [mybind]

" Switch wrap.
nnoremap <silent> [mybind]tw :<C-u>setlocal wrap! wrap?<CR>

nnoremap <silent> [mybind]v :<C-u>e ~/volt/rc/default/vimrc.vim<CR>
nnoremap [mybind]V :<C-u>source ~/volt/rc/default/vimrc.vim<CR>
nnoremap <silent> [mybind]gv :<C-u>e ~/volt/rc/default/gvimrc.vim<CR>
nnoremap [mybind]gV :<C-u>source ~/volt/rc/default/gvimrc.vim<CR>

" Change current window and size.
nnoremap <silent> [mybind]h <c-w>h:call GoodWinWidth()<cr>
nnoremap <silent> [mybind]j <c-w>j:call GoodWinHeight()<cr>
nnoremap <silent> [mybind]k <c-w>k:call GoodWinHeight()<cr>
nnoremap <silent> [mybind]l <c-w>l:call GoodWinWidth()<cr>

nnoremap <silent> [mybind]eu :<C-u>setlocal fenc=utf-8<CR>
nnoremap <silent> [mybind]ee :<C-u>setlocal fenc=euc-jp<CR>
nnoremap <silent> [mybind]es :<C-u>setlocal fenc=cp932<CR>
nnoremap <silent> [mybind]eU :<C-u>e ++enc=utf-8 %<CR>
nnoremap <silent> [mybind]eE :<C-u>e ++enc=euc-jp %<CR>
nnoremap <silent> [mybind]eS :<C-u>e ++enc=cp932 %<CR>

nnoremap <silent> [mybind]el :<C-u>setlocal fileformat=unix<CR>
nnoremap <silent> [mybind]em :<C-u>setlocal fileformat=mac<CR>
nnoremap <silent> [mybind]ed :<C-u>setlocal fileformat=dos<CR>
nnoremap <silent> [mybind]eL :<C-u>e ++fileformat=unix %<CR>
nnoremap <silent> [mybind]eM :<C-u>e ++fileformat=mac %<CR>
nnoremap <silent> [mybind]eD :<C-u>e ++fileformat=dos %<CR>

nnoremap <silent> [mybind]fm :<C-u>setlocal foldmethod=marker<CR>
nnoremap <silent> [mybind]fi :<C-u>setlocal foldmethod=indent<CR>
nnoremap <silent> [mybind]fs :<C-u>setlocal foldmethod=syntax<CR>

nnoremap <silent> [mybind]cc :<C-u>let &colorcolumn = &colorcolumn == 0 ? 80 : 0<CR>
nnoremap <silent> [mybind]cl :<C-u>set cursorline!<CR>
nnoremap <silent> [mybind]cn :<C-u>set cursorcolumn!<CR>
nnoremap <silent> [mybind]tn :<C-u>set relativenumber!<CR>

nnoremap <silent> [mybind]/  :vimgrep  %<left><left>
nnoremap <silent> [mybind]n  :cnext<CR>
nnoremap <silent> [mybind]N  :cprevious<CR>

nnoremap <silent> gm :call GotoCenter()<CR>

" }}}1
"===============================================================================
" vim: foldmethod=marker
