set nocompatible              " be iMproved, required
set number
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Bundles
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'
Plugin 'keith/investigate.vim'
Plugin 'ternjs/tern_for_vim'
Plugin 'w0rp/ale'

" Colorschemes
Plugin 'trusktr/seti.vim'
Plugin 'keith/parsec.vim'

colorscheme seti

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
syntax on

" Tabs configuration
autocmd FileType sh set softtabstop=4|set shiftwidth=4|set expandtab
autocmd FileType python set softtabstop=4|set shiftwidth=4|set expandtab
autocmd FileType javascript set softtabstop=2|set shiftwidth=2|set expandtab
autocmd FileType julia set tabstop=4|set shiftwidth=4|set expandtab

" Automatically change window's cwd to file's dir
set autochdir
set listchars=tab:»\ ,eol:¬,trail:~

" Misc Shortcuts
nnoremap <leader>k :setlocal number!<CR>
nnoremap <leader>l :set list!<CR>
nnoremap <leader>sp :setlocal spell spelllang=pt_br<CR>
nnoremap <leader>se :setlocal spell spelllang=en_us<CR>
nnoremap <leader>sn :setlocal nospell<CR>

" Airline
set laststatus=2

" NerdTree
map <F2> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" jedi-vim
" let g:jedi#use_tabs_not_buffers = 1
let g:jedi#use_splits_not_buffers = "left"
let g:jedi#popup_on_dot = 0
let g:jedi#show_call_signatures = "0"
let g:jedi#smart_auto_mappings = 0

" Pylint
autocmd FileType python set makeprg=pylint\ --reports=n\ --msg-template=\"{path}:{line}:\ {msg_id}\ {symbol},\ {obj}\ {msg}\"\ %:p
autocmd FileType python set errorformat=%f:%l:\ %m

" Ale async linter
let g:ale_sign_column_always = 1
let g:ale_set_loclist = 1
let g:ale_open_list = 0
let g:ale_echo_cursor = 1 " 0 Workaround for missing cursor

" Autoreload vimrc on save
augroup AutoReloadVimRC
    au!
    " automatically reload vimrc when it's saved
    au BufWritePost $MYVIMRC so $MYVIMRC
augroup END

" EPUB support
au BufReadCmd *.epub call zip#Browse(expand("<amatch>"))
