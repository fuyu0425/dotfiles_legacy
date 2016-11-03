set nocompatible              " be iMproved, required
filetype off                  " required

"Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Bundle 'gmarik/Vundle.vim'
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
call vundle#end()            " required

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
""format for c++""
let g:autoformat_verbosemode=1
let g:formatdef_clangformat = '"clang-format -style=WebKit"'
"au BufWrite * :Autoformat
noremap <F3> :Autoformat<CR>
set laststatus=2
set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

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
set fileencodings=utf-8
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
set shell=zsh\ -l

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
let g:go_list_type = "quickfix"

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
"let g:ctrlp_user_command = 'find %s -type f'  
au FileType cpp map <F9> :call CPP()<CR>
func CPP()
    exec "w"
    exec "!g++  -O2 -g  % -o %<.out"
    exec "! ./%<.out"
endfunc
map <C-A> ggVG"+y"
vmap <C-C> "+y"
nnoremap <F5> :NERDTree<CR>
nmap <silent> <leader>t :NERDTreeTabsToggle
"let g:nerdtree_tabs_open_on_console_startup = 1
