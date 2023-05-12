" Plugs
call plug#begin()
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }

Plug 'itchyny/lightline.vim'

Plug 'preservim/nerdcommenter'

Plug 'lervag/vimtex'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'luochen1990/rainbow'

Plug 'preservim/nerdtree'

call plug#end()
autocmd VimEnter * NERDTree | wincmd p
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle
" START OF vimtex CONFIGURATION
" This is necessary for VimTeX to load properly. The "indent" is optional.
" Note that most plugin managers will do this automatically.
filetype plugin indent on

" This enables Vim's and neovim's syntax-related features. Without this, some
" VimTeX features will not work (see ":help vimtex-requirements" for more
" info).
syntax enable

" Viewer options: One may configure the viewer either by specifying a built-in
" viewer method:
let g:vimtex_view_method = 'zathura'

" Or with a generic interface:
let g:vimtex_view_general_viewer = 'zathura'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'

" VimTeX uses latexmk as the default compiler backend. If you use it, which is
" strongly recommended, you probably don't need to configure anything. If you
" want another compiler backend, you can change it as follows. The list of
" supported backends and further explanation is provided in the documentation,
" see ":help vimtex-compiler".
let g:vimtex_compiler_method = 'latexmk'

" Most VimTeX mappings rely on localleader and this can be changed with the
" following line. The default is usually fine and is the symbol "\".
let maplocalleader = ","
let g:vimtex_complete_enabled = 1
" END OF vimtex CONFIGURATION

" Key map
let mapleader = ","
nmap j gj
nmap k gk
nmap fs ^
nmap fe $
vmap fs ^
vmap fe $
nmap ;; :
nmap / :/
imap jk <Esc>
vmap jk <Esc>
nmap fw :w<CR>
nmap fq :q<CR>
nmap fq1 :q!<CR>
nmap <A+1> <C+^>
nmap ww <C-w>w
nmap wh <C-w>h
nmap wl <C-w>l
nmap wk <C-w>k
nmap wj <C-w>j
nmap wv <C-w>v
nmap sp :split file<CR>
nmap vs :vsplit file<CR>
nmap nf :new file<CR>
nmap ol :only<CR>
nmap cl :close<CR>
nmap nh :nohl
nmap ot :terminal<CR>
nmap os :shell<CR>
nmap wy "+y
nmap wp "+p
imap ( ()<Esc>i
imap [ []<Esc>i
imap { {}<Esc>i
nmap ff <C-f>
nmap bb <C-b>
nmap fn :bn<CR>
nmap fp :bp<CR>
nmap lff :Leaderf file<CR>
nmap ont :NERDTree<CR>

" Other setting
autocmd BufWritePost $MYVIMRC source $MYVIMRC
set clipboard=unnamed,unnamedplus
syntax enable
set relativenumber
set number
set smartindent
syntax on " This is required
colorscheme monokai
set termguicolors
