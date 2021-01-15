if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

let g:coc_global_extensions = ['coc-json', 'coc-git', 'coc-pyright', 'coc-marketplace', 'coc-clangd', 'coc-yank']

call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jacoborus/tender.vim'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release/rpc' }
call plug#end()

set hidden
set nobackup
set noswapfile
set nowritebackup
set updatetime=300
set shortmess+=c
set expandtab
set signcolumn=yes
set sw=4
set ts=4
set termguicolors
set noshowmode
set number
set relativenumber

set termguicolors
let g:airline_theme = 'tender'
colorscheme tender
hi Normal guibg=None ctermbg=None
hi SignColumn guibg=None ctermbg=None

nmap <leader>lc <ESC>:CocList commands<CR>
nmap <leader>le <ESC>:CocList extensions<CR>
nmap <leader>ln <ESC>:CocNext<CR>
nmap <leader>lo <ESC>:CocList outline<CR>
nmap <leader>lp <ESC>:CocPrev<CR>
nmap <leader>lr <ESC>:CocListResume<CR>

nmap <leader>ca <Plug>(coc-codeaction)
nmap <leader>cd <Plug>(coc-definition)
nmap <leader>ci <Plug>(coc-implementation)
nmap <leader>cq <Plug>(coc-fix-current)
nmap <leader>cr <Plug>(coc-references)
nmap <leader>ct <Plug>(coc-type-definition)

nmap <leader>fb  <ESC>:FzfPreviewBuffersRpc<CR>
nmap <leader>fc  <ESC>:FzfPreviewChangesRpc<CR>
nmap <leader>fd  <ESC>:FzfPreviewDirectoryFilesRpc<CR>
nmap <leader>fu  <ESC>:FzfPreviewMruFilesRpc<CR>
nmap <leader>fl  <ESC>:FzfPreviewLocationListRpc<CR>
nmap <leader>fga <ESC>:FzfPreviewGitActionsRpc<CR>
nmap <leader>fga <ESC>:FzfPreviewGitActionsRpc<CR>
nmap <leader>fgf <ESC>:FzfPreviewGitFilesRpc<CR>
nmap <leader>fm  <ESC>:FzfPreviewMarksRpc<CR>
nmap <leader>fq  <ESC>:FzfPreviewQuickFixRpc<CR>
