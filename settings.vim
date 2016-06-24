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
"
" PLUGINS
"   1. http://vimawesome.com

"""""""""""""""""""
" VIM-PLUG START
"""""""""""""""""""
call plug#begin('~/.vim/plugged') " Add your plugins after this line


" Functionality
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } " file browser
Plug 'kien/ctrlp.vim'                  " Fuzzy file, buffer, mru, tag, etc finder
Plug 'easymotion/vim-easymotion'       " Move around screen faster (visually)
Plug 'tpope/vim-surround'              " Quoting/parenthesizing
Plug 'junegunn/vim-easy-align'         " Align text
Plug 'matze/vim-move'                  " Move lines and selections up or down
Plug 'terryma/vim-multiple-cursors'    " Sublime style multiple selections
Plug 'kshenoy/vim-signature'           " Toggle, display, and navigate marks
Plug 'tpope/vim-fugitive'              " Git wrapper
Plug 'jiangmiao/auto-pairs'            " create pairs of [], (), {}, etc

" Appearance
Plug 'flazz/vim-colorschemes'          " Change Colorshemes
Plug 'mhinz/vim-startify'              " Welcome Screen
Plug 'morhetz/gruvbox'                 " Our Color Theme
Plug 'nathanaelkane/vim-indent-guides' " Visually display indent levels
Plug 'airblade/vim-gitgutter'          " Show Git changes in gutter
Plug 'neomake/neomake'                 " We use it for linting
Plug 'vim-airline/vim-airline'         " status/tabline (bottom)

" Syntax
Plug 'digitaltoad/vim-pug'             " Jade|Pug Syntax
Plug 'wavded/vim-stylus'               " Stylus Syntax



"""""""""""""""""""
" VIM-PLUG END
"""""""""""""""""""
call plug#end() " Add plugins to &runtimepath



"""""""""""""""""""
" Color Scheme
"""""""""""""""""""
colorscheme gruvbox
set background=dark    " Setting dark mode

nnoremap <silent> [oh :call gruvbox#hls_show()<CR>
nnoremap <silent> ]oh :call gruvbox#hls_hide()<CR>
nnoremap <silent> coh :call gruvbox#hls_toggle()<CR>

nnoremap * :let @/ = ""<CR>:call gruvbox#hls_show()<CR>*
nnoremap / :let @/ = ""<CR>:call gruvbox#hls_show()<CR>/
nnoremap ? :let @/ = ""<CR>:call gruvbox#hls_show()<CR>?



"""""""""""""""""""
" Indent Guides
"""""""""""""""""""
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 1
let g:indent_guides_color_change_percent = 7
let g:indent_guides_start_level = 1
let g:indent_guides_guide_size = 2
set ts=2 sw=2 et " tab-space space-width



"""""""""""""""""""
" Functionality
"""""""""""""""""""
let mapleader = ',' " Remap Leader Key to ,
let g:move_key_modifier = 'C'


  
"""""""""""""""""""
" NerdTree
"""""""""""""""""""
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

map <C-t> :NERDTreeToggle<CR> " ctrl+n toggles NerdTree


"""""""""""""""""""
" EasyAlign
"""""""""""""""""""
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)



"""""""""""""""""""
" Tab-Space
"""""""""""""""""""
set visualbell " no noise
"2 space ident
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set expandtab
