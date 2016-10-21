set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"Plugin 'gmarik/Vundle.vim'
Bundle 'Valloric/YouCompleteMe'
"Bundle 'scrooloose/syntastic'
Bundle 'jiangmiao/auto-pairs'
Plugin 'vim-airline/vim-airline'        " This is for awesome outlook
Plugin 'vim-airline/vim-airline-themes' " This is for awesome outlook
Plugin 'Chiel92/vim-autoformat'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'tpope/vim-surround'
Plugin 'fatih/vim-go'

call vundle#end()            " required
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
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
            \ ['gray',        'RoyalBlue3'],
            \ ['black',       'SeaGreen3'],
            \ ['darkmagenta', 'DarkOrchid3'],
            \ ['Darkblue',    'firebrick3'],
            \ ['darkgreen',   'RoyalBlue3'],
            \ ['darkcyan',    'SeaGreen3'],
            \ ['darkred',     'DarkOrchid3'],
            \ ['red',         'firebrick3'],]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
""format""
let g:autoformat_verbosemode=1
let g:formatdef_clangformat = '"clang-format -style=WebKit"'
"au BufWrite * :Autoformat
noremap <F3> :Autoformat<CR>
set laststatus=2
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_cpp_compiler_options = '-std=c++11'
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_cpp_include_dirs = ['/usr/include/']
"let g:syntastic_cpp_remove_include_errors = 1
"let g:syntastic_cpp_check_header = 1
"let g:syntastic_cpp_compiler = 'g++-4.8'

set title
set encoding=utf-8
set fileencodings=utf-8,cp950
set number
set cursorline
set cursorcolumn
set ruler
set wrap
set expandtab
set shiftwidth=4
set autoindent
set smartindent
set confirm
set ignorecase smartcase
set hlsearch
set tabstop=4
"colors
syntax enable
syntax on
set t_Co=256
let g:solarized_termtrans = 1
set background=dark
colorscheme solarized
"
filetype plugin indent on
map <F5> :call CR()<CR>
func! CR()
    exec "w"
    exec "!g++-4.8 -std=c++11  -O2 -g  % -o %<.out"
    exec "! ./%<.out"
endfunc
map <C-A> ggVG"+y"

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
let g:go_list_type = "quickfix"
