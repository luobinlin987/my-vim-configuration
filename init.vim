" Plugs
call plug#begin('~/.config/nvim/plugged')
Plug 'itchyny/lightline.vim'

Plug 'preservim/nerdcommenter'

Plug 'lervag/vimtex'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'luochen1990/rainbow'

Plug 'morhetz/gruvbox'

Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }

Plug 'SirVer/ultisnips'

Plug 'honza/vim-snippets'

Plug 'maralla/completor.vim'
call plug#end()

let g:Lf_PreviewInPopup = 1

let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle
" START OF vimtex CONFIGURATION
" This is necessary for VimTeX to load properly. The "indent" is optional.
" Note that most plugin managers will do this automatically.
" filetype plugin indent on

" This enables Vim's and neovim's syntax-related features. Without this, some
" VimTeX features will not work (see ":help vimtex-requirements" for more
" info).

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

" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
" END OF vimtex CONFIGURATION

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
nmap <leader>b :Leaderf buffer<CR>
nmap <leader>l :Leaderf line<CR>
tmap jk <C-\><C-n>
tmap wl <C-w>l
tmap wh <C-w>h
tmap wj <C-w>j
tmap wk <C-w>k
nmap rs :%s/
imap ,, <<
imap .. >>
imap lp ()<Esc>i

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
