" Getting started
"
" Manual installation step
" brew install fzf && $(brew --prefix)/opt/fzf/install
" brew install the_silver_searcher
" Manual steps:
" :GoInstallBinaries
"
scriptencoding utf-8
syntax on
filetype plugin indent on
set encoding=utf-8
set nocompatible              " required
set laststatus=2
set path+=**
set expandtab
set wildmenu
set background=dark
set ruler
set backspace=start,indent,eol
set number
set relativenumber
set nowrap
set hidden
set nonumber
set showcmd
set modeline
set foldmethod=indent
set foldlevel=99
set clipboard=unnamed
set updatetime=100
set backupcopy=yes
set noswapfile
set timeout ttimeout         " separate mapping and keycode timeouts
set timeoutlen=500           " mapping timeout 500ms  (adjust for preference)
set ttimeoutlen=20           " keycode timeout 20ms

" Fuzzy search
nnoremap <C-P> :FZF<CR>

" cycle through buffers
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

let g:NERDTreeWinSize=60

" Enable folding with the spacebar
nnoremap <space> za

" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Saner split defaults
set splitbelow
set splitright

if !has('gui_running')
  set t_Co=256
endif

" Snippets
nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>6jwwwa
nnoremap ,pc-id :-1read $HOME/.vim/snippets/search_by_pc_product_id.sql<CR>10j23la
nnoremap ,frame-family :-1read $HOME/.vim/snippets/frame_family.sql<CR>12j5wla
nnoremap ,pcm :-1read $HOME/.vim/snippets/pcm.sql<CR>2j18li''<esc>h

autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType sql setlocal shiftwidth=2 tabstop=2
autocmd FileType typescript setlocal shiftwidth=2 tabstop=2
autocmd FileType typescriptreact setlocal shiftwidth=2 tabstop=2
autocmd FileType make setlocal shiftwidth=4 tabstop=4
autocmd FileType groovy setlocal shiftwidth=4 tabstop=4
autocmd FileType xml setlocal shiftwidth=4 tabstop=4
autocmd FileType java setlocal shiftwidth=8 tabstop=8
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2
autocmd FileType cpp setlocal shiftwidth=2 tabstop=2
autocmd FileType c setlocal shiftwidth=2 tabstop=2
:nmap cp :let @+ = expand("%")<CR>

" find any annoying whitespace at end of lines
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" rusty-tags
autocmd BufRead *.rs :setlocal tags=./rusty-tags.vi;/,$RUST_SRC_PATH/rusty-tags.vi
autocmd BufWritePost *.rs :silent! exec "!rusty-tags vi --quiet --start-dir=" . expand('%:p:h') . "&" | redraw!
