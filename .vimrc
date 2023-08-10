" https://github.c m/AlariCode/purpleschool-neovim
" ~/.config/nvim

set nocompatible             
filetype plugin on
syntax on
nmap <F3> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>
imap <F3> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>
" set rtp+=~/vimfiles/bundle/Vundle.vim
set rtp+=$HOME/.vim/bundle/Vundle.vim
"shift выделение
nmap <S-Up> v<Up>
nmap <S-Down> v<Down>
nmap <S-Left> v<Left>
nmap <S-Right> v<Right>
vmap <S-Up> <Up>
vmap <S-Down> <Down>
vmap <S-Left> <Left>
vmap <S-Right> <Right>
imap <S-Up> <Esc>v<Up>
imap <S-Down> <Esc>v<Down>
imap <S-Left> <Esc>v<Left>
imap <S-Right> <Esc>v<Right>

vmap <C-c> y<Esc>i
vmap <C-x> d<Esc>i
map <C-v> pi
imap <C-v> <Esc>pi
imap <C-z> <Esc>ui

set background=light
"colorscheme PaperColor
call vundle#begin()
Plugin 'morhetz/gruvbox'
Plugin 'vimwiki/vimwiki'
set colorcolumn=110

let g:vimwiki_list = [{'path': '~/PycharmProjects/ydirect/сторис/18.8.22/backtothefuture/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
Plugin 'NLKNguyen/papercolor-theme'

Plugin 'preservim/nerdtree'
Plugin '907th/vim-auto-save'
let g:auto_save = 1  " enable AutoSave on Vim startup
Plugin 'VundleVim/Vundle.vim'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-surround'
Plugin 'terryma/vim-multiple-cursors'

call vundle#end()            " required
filetype plugin indent on    " required

set tabstop=4 
set shiftwidth=4
set smarttab
set expandtab "Ставим табы пробелами
set softtabstop=4 "4 пробела в табе
" Автоотступ
set autoindent
" Подсвечиваем все что можно подсвечивать
let python_highlight_all = 1
" Включаем 256 цветов в терминале, мы ведь работаем из иксов?
" Нужно во многих терминалах, например в gnome-terminal
set t_Co=256
" Перед сохранением вырезаем пробелы на концах (только в .py файлах)
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
" В .py файлах включаем умные отступы после ключевых слов
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
syntax on "Включить подсветку синтаксиса

" set nu "Включаем нумерацию строк
set mousehide "Спрятать курсор мыши когда набираем текст
set mouse=a "Включить поддержку мыши
set termencoding=utf-8 "Кодировка терминала
set novisualbell "Не мигать 
set t_vb= "Не пищать! (Опции 'не портить текст', к сожалению, нету)
" Удобное поведение backspace
set backspace=indent,eol,start whichwrap+=<,>,[,]
" Вырубаем черточки на табах
set showtabline=1

" Переносим на другую строчку, разрываем строки
set wrap
set linebreak

" Вырубаем .swp и ~ (резервные) файлы
set nobackup
set noswapfile
set encoding=utf-8 " Кодировка файлов по умолчанию
set fileencodings=utf8,cp1251

set clipboard=unnamed
set ruler

set hidden
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>

" Выключаем звук в Vim
set visualbell t_vb=

"Переключение табов по CMD+number для MacVim
" Press Ctrl-Tab to switch between open tabs (like browser tabs) to 
" the right side. Ctrl-Shift-Tab goes the other way.
noremap <C-Tab> :tabnext<CR>
noremap <C-S-Tab> :tabprev<CR>

" Switch to specific tab numbers with Command-number
noremap <D-1> :tabn 1<CR>
noremap <D-2> :tabn 2<CR>
noremap <D-3> :tabn 3<CR>
noremap <D-4> :tabn 4<CR>
noremap <D-5> :tabn 5<CR>
noremap <D-6> :tabn 6<CR>
noremap <D-7> :tabn 7<CR>
noremap <D-8> :tabn 8<CR>
noremap <D-9> :tabn 9<CR>
" Command-0 goes to the last tab
noremap <D-0> :tablast<CR>
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
set guifont=Monaco:h18
colorscheme OceanicNext
"замену табов на пробелы
set expandtab
set smarttab
"количество пробелов в табе при удалении
set tabstop=4
"количество пробелов в табе при удалении
set softtabstop=4
set shiftwidth=4
"нумерация строк
set number
"небольшой отступ
set foldcolumn=2
"подстветка синтаксиса
syntax on
set mouse=a

"alias :map
nmap <F6> :NERDTreeToggle<CR>

set encoding=utf8
set ffs=unix,dos,mac


