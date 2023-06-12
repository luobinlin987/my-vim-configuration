" Plugs
call plug#begin('~/.local/share/nvim/plugged')
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }

Plug 'itchyny/lightline.vim'

Plug 'preservim/nerdcommenter'

Plug 'lervag/vimtex'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'luochen1990/rainbow'

Plug 'preservim/nerdtree'

Plug 'rudrab/vimf90'

Plug 'morhetz/gruvbox'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

Plug 'junegunn/fzf.vim'
call plug#end()

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle
" START OF vimtex CONFIGURATION
" This is necessary for VimTeX to load properly. The "indent" is optional.
" Note that most plugin managers will do this automatically.
" filetype plugin indent on

" This enables Vim's and neovim's syntax-related features. Without this, some
" VimTeX features will not work (see ":help vimtex-requirements" for more
" info).
syntax enable

" Viewer options: One may configure the viewer either by specifying a built-in
" viewer method:
let g:vimtex_view_method = 'zathura'

" Or with a generic interface:
let g:vimtex_view_general_viewer = 'okular' "'zathura'
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
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1

" Key map
let mapleader = ","
nmap j gj
nmap k gk
vmap j gj
vmap k gk
nmap fs ^
nmap fe $
vmap fs ^
vmap fe $
vmap ff <C-f>
vmap bb <C-b>
nmap ;; :
nmap / :/
imap jk <Esc>
vmap jk <Esc>
nmap fw :w<CR>
nmap fw1 :w!<CR>
nmap fq :q<CR>
nmap fq1 :q!<CR>
nmap ww <C-w>w
nmap wh <C-w>h
nmap wl <C-w>l
nmap wk <C-w>k
nmap wj <C-w>j
nmap wv <C-w>v
nmap cl :close<CR>
nmap nh :nohl<CR>
nmap <leader>t :terminal<CR>
nmap ff <C-f>
nmap bb <C-b>
nmap bn :bn<CR>
nmap bp :bp<CR>
nmap bd :bd<CR>
nmap <leader>f :Leaderf file<CR>
nmap <leader>bl :Leaderf line<CR>
nmap <leader>b :Leaderf buffer<CR>
nmap ont :NERDTree<CR>
tmap jk <C-\><C-n>
tmap wl <C-w>l
tmap wh <C-w>h
tmap wj <C-w>j
tmap wk <C-w>k
nmap rs :%s/
imap ,, <<
imap .. >>
imap ( ()<Esc>i
imap [ []<Esc>i
imap { {}<Esc>i
imap ,. <><Esc>i

" Other setting
autocmd BufWritePost $MYVIMRC source $MYVIMRC
set clipboard=unnamed,unnamedplus
syntax enable
set relativenumber
set number
set smartindent
syntax on " This is required
colorscheme gruvbox
set background=dark
set termguicolors
set sw=4
set ts=4
filetype indent on
set autoindent
let s:extfname = expand("%:e")
if s:extfname ==? "f90"
	let fortran_free_source = 1
	unlet! fortran_fixed_source 
endif
let fortran_do_enddo=1
let fortran_more_precise=1
let fortran_have_tabs=1
if $NVM_BIN != ""
	let g:coc_node_path = '$NVM_BIN/node'
endif
set guioptions-=m
set guioptions-=T
