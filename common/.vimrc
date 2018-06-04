set nocompatible              " be iMproved, required
filetype off                  " required
"Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Bundle 'gmarik/Vundle.vim'
Plugin 'editorconfig/editorconfig-vim'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 'jiangmiao/auto-pairs'
Plugin 'vim-airline/vim-airline'        " This is for awesome outlook
Plugin 'vim-airline/vim-airline-themes' " This is for awesome outlook
Plugin 'Chiel92/vim-autoformat'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'tpope/vim-surround'
Plugin 'fatih/vim-go'
Bundle 'ctrlpvim/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'kylef/apiblueprint.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'rodjek/vim-puppet'
Bundle 'scrooloose/nerdcommenter'
Bundle 'thiagoalessio/rainbow_levels.vim'
Bundle 'embear/vim-localvimrc'

call vundle#end()            " required
set t_Co=256
syntax enable
syntax on
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
"let g:ycm_show_diagnostics_ui = 0
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:rbpt_colorpairs = [
            \ ['brown',       'RoyalBlue3'],
            \ ['Darkblue',    'SeaGreen3'],
            \ ['darkgray',    'DarkOrchid3'],
            \ ['darkgreen',   'firebrick3'],
            \ ['darkcyan',    'RoyalBlue3'],
            \ ['darkred',     'SeaGreen3'],
            \ ['darkmagenta', 'DarkOrchid3'],
            \ ['brown',       'firebrick3'],
            \ ['darkmagenta', 'DarkOrchid3'],
            \ ['Darkblue',    'firebrick3'],
            \ ['darkgreen',   'RoyalBlue3'],
            \ ['darkcyan',    'SeaGreen3'],
            \ ['darkred',     'DarkOrchid3'],
            \ ['red',         'firebrick3'],]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au  Syntax * RainbowParenthesesLoadSquare
au   Syntax * RainbowParenthesesLoadBraces

""format for c++""
let g:autoformat_verbosemode=1
let g:formatdef_clangformat = '"clang-format -style=WebKit"'
"au BufWrite * :Autoformat
noremap <F3> :Autoformat<CR>
set laststatus=2
set statusline+=%#warningmsg#
set title
set encoding=utf-8
set fileencodings=utf-8
set number
set cursorline
set cursorcolumn
set ruler
set wrap
"set expandtab
"set shiftwidth=4
set autoindent
set smartindent
set confirm
set ignorecase smartcase
set hlsearch
"set tabstop=4
"colors
set t_Co=256
let g:solarized_termtrans = 1
set background=dark
colorscheme solarized
"
filetype plugin indent on
filetype plugin on
set shell=/bin/zsh\ -l

"ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux"
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
            \ 'dir':  '\v[\/]\.(git|hg|svn)$',
            \'file': '\v\.(exe|so|dll)$',
            \'link': 'some_bad_symbolic_links',
            \}
"let g:ctrlp_user_command = 'find %s -type f
se makeprg=g++\ %\ -Wall\ -Wshadow\ -std=c++14\ -o\ %<

map <F10> :make <CR>:!./%< < %<.in <CR>
au FileType c map <F9> :call C()<CR>
func C()
    exec "w"
    exec "!gcc -D fuyu0425 % -o %<"
    exec "! ./%<"
endfunc
au FileType cpp map <F9> :call CPP()<CR>
func CPP()
    exec "w"
    exec "!g++ -D fuyu0425 % -o %<"
    exec "! ./%<"
endfunc
au FileType python map <F9> :call PY()<CR>
func PY()
    exec "w"
    exec "!chmod +x %"
    exec "! ./%"
endfunc
map <C-A> ggVG"+y"
vmap <C-C> "+y"
nnoremap <F5> :NERDTreeToggle<CR>
nmap <silent> <leader>t :NERDTreeTabsToggle
"let g:nerdtree_tabs_open_on_console_startup = 1
autocmd FileType apiblueprint nnoremap <C-b> :call GenerateRefract()<cr>

let g:UltiSnipsExpandTrigger="<F4>"
let g:UltiSnipsSnippetDirectories=['UltiSnips']
let g:syntastic_check_on_open = 0

let g:NERDSpaceDelims=1

map cc  <leader>cc
map cn  <leader>cn
map <C-_> <leader>c<space>
imap <C-_> <ESC><leader>c<space> i

" dirty hack
cmap w!! w !sudo tee > /dev/null %


" rainbow levels config

map <F2> :RainbowLevelsToggle<cr>



let g:rainbow_levels = [
            \{'ctermfg': 2, 'guifg': '#859900'},
            \{'ctermfg': 6, 'guifg': '#2aa198'},
            \{'ctermfg': 4, 'guifg': '#268bd2'},
            \{'ctermfg': 5, 'guifg': '#6c71c4'},
            \{'ctermfg': 1, 'guifg': '#dc322f'},
            \{'ctermfg': 3, 'guifg': '#b58900'},
            \{'ctermfg': 8, 'guifg': '#839496'},
            \{'ctermfg': 7, 'guifg': '#586e75'}]

" localvimrc

let g:localvimrc_ask=0

