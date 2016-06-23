filetype off                       " required
let $NVIM_TUI_ENABLE_TRUE_COLOR=1  " Set True Color


"""""""""""""""""""
" VIM-PLUG HELP
"""""""""""""""""""
" DOCUMENTATION
"   1. https://github.com/junegunn/vim-plug
"
" USAGE
"   1. Begin the section with call plug#begin()
"   2. List the plugins with Plug commands
"   3. call plug#end() to update &runtimepath and initialize plugin system
"
" INSTALLATION
"   1. Reload .vimrc and :PlugInstall to install plugins

"""""""""""""""""""
" VIM-PLUG START
"""""""""""""""""""
call plug#begin('~/.vim/plugged') " Add your plugins after this line

Plug 'morhetz/gruvbox'
Plug 'easymotion/vim-easymotion'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'mhinz/vim-startify'
Plug 'mhinz/vim-signify'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'kshenoy/vim-signature'
Plug 'scrooloose/syntastic'
Plug 'kien/rainbow_parentheses.vim'


"""""""""""""""""""
" VIM-PLUG END
"""""""""""""""""""
call plug#end() " Add plugins to &runtimepath


"""""""""""""""""""
" Colors
"""""""""""""""""""
" Color Scheme
colorscheme gruvbox
set background=dark    " Setting dark mode

nnoremap <silent> [oh :call gruvbox#hls_show()<CR>
nnoremap <silent> ]oh :call gruvbox#hls_hide()<CR>
nnoremap <silent> coh :call gruvbox#hls_toggle()<CR>

nnoremap * :let @/ = ""<CR>:call gruvbox#hls_show()<CR>*
nnoremap / :let @/ = ""<CR>:call gruvbox#hls_show()<CR>/
nnoremap ? :let @/ = ""<CR>:call gruvbox#hls_show()<CR>?

" Indent GUides
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0




"""""""""""""""""""
" Functionality
"""""""""""""""""""
let mapleader = ',' " Remap Leader Key to ,

