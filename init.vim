call plug#begin()

Plug 'dikiaap/minimalist'
Plug 'morhetz/gruvbox'
Plug 'easymotion/vim-easymotion'
Plug 'deoplete-plugins/deoplete-jedi' " Autocompletado python
Plug 'jiangmiao/auto-pairs' " Autocompletado para los parentesis
Plug 'preservim/nerdcommenter' " Atajo para agregar comentarios
Plug 'christoomey/vim-tmux-navigator' " Modo para moverse entre ventanas de vim

Plug 'SirVer/ultisnips' " ultisnips and vim-snippets son complementos para markdown desde https://jdhao.github.io/2019/01/15/markdown_edit_preview_nvim/ 
Plug 'honza/vim-snippets'
" Configuración para Markdown
let g:UltiSnipsExpandTrigger="<tab>"  " use <Tab> to trigger autocompletion
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"


"Inicio de la configuración de deoplete (ver github)
Plug 'preservim/nerdtree' 

if has('nvim')
	  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  else
	    Plug 'Shougo/deoplete.nvim'
	      Plug 'roxma/nvim-yarp'
	        Plug 'roxma/vim-hug-neovim-rpc'
	endif
let g:deoplete#enable_at_startup = 1
" fin configuración deoplete

call plug#end()

set t_Co=256
syntax on
colorscheme minimalist
set encoding=utf-8

" Configuración general de Neovim
set number
" set relativenumber

colorscheme gruvbox
let g:guvbox_contrast_dark = "hard"
let mapleader=" "

nmap <Leader>s <Plug>(easymotion-s2)
let g:python3_host_prog = 'E:/Users/Josue/anaconda3/python'

" Configuración para Nerdtree. CR genera un Enter
nmap <Leader>nt :NERDTreeFind<CR>

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>



