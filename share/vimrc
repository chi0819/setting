" filename
let &titlestring = fnamemodify(getcwd(), ":t") . "/" . expand("%:t")
set title

" line
set scrolloff=5
filetype plugin indent on
set autoindent
set smartindent

" color
syntax on
set t_Co=256

" format
set expandtab
set tabstop=4
set shiftwidth=4
set ignorecase
set smartcase

" search
set hlsearch
set incsearch

" sound
set belloff=all

" swap
set noswapfile

" shortcut
nnoremap <Space>u <C-r>


" Plugin
filetype plugin indent on

call plug#begin()

Plug 'rust-lang/rust.vim'
Plug 'gleam-lang/gleam.vim'
Plug 'lervag/vimtex'
Plug 'tpope/vim-commentary'

call plug#end()

" rust.vim
let g:rustfmt_autosave = 1

" VimTex
let g:vimtex_view_method = 'general'
let g:vimtex_view_general_viewer = 'open'
let g:vimtex_view_general_options = ''
let g:vimtex_compiler_method = 'latexmk'
let g:vimtex_compiler_latexmk_engines = {'_': '-xelatex'}
let g:vimtex_compiler_latexmk = {
  \ 'build_dir' : '',
  \ 'executable' : 'latexmk',
  \ 'options' : [
  \   '-pdfxe',
  \   '-shell-escape',
  \   '-verbose',
  \   '-file-line-error',
  \   '-synctex=1',
  \   '-interaction=nonstopmode',
  \ ],
  \}
