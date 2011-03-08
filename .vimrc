" Inspired by GGLucas

set autoindent
set sta
set sw=4 ts=4
set expandtab
syntax on

" Line numbers
set nu
set ruler

" 
set hidden

set nocompatible
filetype plugin on
filetype indent on

" Leader
let mapleader=","

set history=1000

nmap <silent> <C-n> :tabprev<CR>
nmap <silent> <C-.> :tabnext<CR>
nmap <silent> <C-h> :bprev<CR>
nmap <silent> <C-l> :bnext<CR>

" Command completion menu
set wildmenu

" SuperTab
let g:SuperTabDefaultCompletionType = "<C-n>"

" TeX
au FileType tex,plaintex set tw=80
au BufNewFile,BufRead *.tex set ft=tex

" PHP
au FileType php inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i 
au FileType php source ~/.vim/plugin/php-doc.vim
au FileType php inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i
au FileType php nnoremap <C-P> :call PhpDocSingle()<CR>
au FileType php vnoremap <C-P> :call PhpDocRange()<CR> 
au FileType php set omnifunc=phpcomplete#CompletePHP
au FileType php let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
au FileType php set noexpandtab

" You might also find this useful
" PHP Generated Code Highlights (HTML & SQL)                                              
let php_sql_query=1                                                                                        
let php_htmlInStrings=1

" Python
au FileType python set tw=80

" Backup dir
set directory=~/.vim/backup//
set backupdir=~/.vim/backup//

" Return to visual mode after indenting
xmap < <gv
xmap > >gv

nmap Y y$

" Characters to use in list mode
set listchars=tab:│\ ,trail:·
set list

" Buffer tabs in statusline
let g:buftabs_active_highlight_group = "Visual"
let g:buftabs_in_statusline = 1
let g:buftabs_only_basename = 1

set laststatus=2

" Spellcheck
set spelllang=en,nl
nmap :ss :set spell<CR>
nmap :uss :set nospell<CR>

" Backspace
set backspace=indent,eol,start

" Inc search
set incsearch
set ignorecase
set smartcase
set hls
nmap <silent> <Leader>n :nohl<CR>

" Global match by default
set gdefault

" Set the title of the window
set title

" # of lines of the edge to scroll
set scrolloff=3

" NERDTree
nmap <silent> <Leader>h :call TreeOpenFocus()<CR>
nmap <silent> <Leader>H :NERDTreeToggle<CR>
nmap <silent> <Leader>d :Bclose<CR>
nmap <silent> <Leader>D :Bclose!<CR>
function! TreeOpenFocus()
    let wnr = bufwinnr("NERD_tree_1")
        if wnr == -1
            :NERDTreeToggle
        else
            exec wnr."wincmd w"
        endif
endfunction

" Reload all snippets
nmap <Leader>s :call ReloadAllSnippets()<CR>


let g:user_zen_expandabbr_key = '<c-e>'
let g:use_zen_complete_tag = 1

" Color Schemes
if $TERM == 'linux'
    " Virtual Console
    colorscheme delek
else
    " Color terminal
    set t_Co=256
    colorscheme customleo
endif

" Taglist settings
nmap <silent> <Leader>l :TlistOpen<CR>
nmap <silent> <Leader>L :TlistToggle<CR>
let Tlist_Use_Right_Window = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Show_One_File = 1
let Tlist_Enable_Fold_Column = 0

" Show commands as they're typed
set showcmd

" Swap ` and '
noremap ' `
noremap ` '

" Use UTF-8 encoding
set encoding=utf-8

" Window navigation
nmap <Left> <C-w>h
nmap <Down> <C-w>j
nmap <Up> <C-w>k
nmap <Right> <C-w>l

" Enable pasting
set pastetoggle=<F10>

" SQLComplete
let g:sql_type_default="mysql"




" Extradite
"nmap <silent> <Leader>gl :Extradite<CR>
"g:extradite_width
"
