""""""""""""""""""""""""""""""""""""""""
let plug_install = 0
let autoload_plug_path = stdpath('config') . '/autoload/plug.vim'
if !filereadable(autoload_plug_path)
    silent exe '!curl -fL --create-dirs -o ' . autoload_plug_path . 
        \ ' https://raw.github.com/junegunn/vim-plug/master/plug.vim'
    execute 'source ' . fnameescape(autoload_plug_path)
    let plug_install = 1
endif
unlet autoload_plug_path

call plug#begin('~/.config/nvim/plugins')

Plug 'arcticicestudio/nord-vim'
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdcommenter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

if plug_install
    PlugInstall --sync
endif
unlet plug_install
""""""""""""""""""""""""""""""""""""""""

" Config for nord-vim
augroup nord-overrides
  autocmd!
  autocmd ColorScheme nord highlight Comment ctermfg=243
augroup END

" Config for vim-gitgutter
set updatetime=200

" Tweaking NORDCOMMENTER
let g:NERDDefaultAlign = 'start'	" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDCommentEmptyLines = 1  	" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDTrimTrailingWhitespace = 1    " Enable trimming of trailing whitespace when uncommenting
let g:NERDToggleCheckAllLines = 1       " Enable NERDCommenterToggle to check all selected lines is commented or not
vmap <c-c> <plug>NERDCommenterToggle gv
nmap <c-c> <plug>NERDCommenterToggle


" set cursorline
colorscheme cyberpunkneon
set clipboard+=unnamedplus
set number
set mouse=a

tnoremap <C-w><C-w> <C-\><C-n>
nnoremap tt :vnew<CR>:terminal<CR>
set splitright  " Put new split on the right pane (when vertical)

set tabstop=4
set shiftwidth=4
set expandtab

