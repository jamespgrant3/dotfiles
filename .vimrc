syntax on

set dir=$HOME/.vim/tmp/swap
set number relativenumber
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set shiftwidth=2    " number of spaces to use for autoindent
set expandtab       " tabs are space
set clipboard=unnamed
set splitbelow
set splitright
set ignorecase
set autoread
set noswapfile

" prevent vim ex mode, annoying
map q: <Nop>
nnoremap Q <nop>

let mapleader = "\\"

autocmd BufNewFile,BufRead *.md set filetype=markdown
autocmd BufNewFile,BufRead *.tsx set filetype=typescript

call plug#begin('~/.vim/plugged')

Plug 'dracula/vim', {'as': 'dracula'}
Plug 'hashivim/vim-terraform'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'HerringtonDarkholme/yats.vim'
Plug 'tpope/vim-fugitive'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

call plug#end()

" experiment bindings
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

lua << EOF
require('telescope').setup{
  defaults = {
    file_ignore_patterns = { "node_modules" },
  }
}
EOF

nnoremap <silent> <leader>s :so %<CR>
nnoremap <silent> <leader>q :q<CR>
nnoremap <silent> <leader>w :w<CR>
" copy current file path into clipboard
nnoremap <silent> <leader>fn :let @*=@%<CR>

" toggle line numbering
nnoremap <silent> <leader>rn :set rnu!<CR>

" fugitive maps
nnoremap <silent> <leader>gs :Git<CR>
nnoremap <silent> <leader>gb :Git blame<CR>
nnoremap <silent> <leader>gc :Git commit<CR>
nnoremap <silent> <leader>gd :Git diff<CR>
nnoremap <silent> <leader>gl :Git log<CR>

" coc-explorer
 nmap <silent> <space>e :CocCommand explorer<CR>

" todolist
nmap <silent> <leader>td :CocList todolist<CR>
" create a todo
nmap <silent> <leader>tda :CocCommand todolist.create<CR>
" clear all todos
nmap <silent> <leader>tdc :CocCommand todolist.clear<CR>

" tab navigation
nnoremap <silent> - :tabprev<CR>
nnoremap <silent> = :tabnext<CR>
nnoremap <leader>nt :tabnew<CR>

" buffer
nnoremap <silent> <leader>bd :bd<CR>

" nnoremap <silent>; :FZF<CR>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> <leader>[ <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>] <Plug>(coc-diagnostic-next)
nmap <silent> <leader>fc <Plug>(coc-fix-current)
nnoremap <silent> K :call <SID>show_documentation()<CR>
autocmd FileType typescript nmap <buffer> <leader>e <Plug>(coc-rename)
autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" organize imports
command! -nargs=0 OR :call CocAction('runCommand', 'editor.action.organizeImport')

" coc-prettier
nmap <silent> <leader>p :Prettier<CR>

let g:airline#extensions#tabline#formatter = 'default'

" better split navigation
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>

" use tab/shift+tab to navigate autocomplete options.
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"let g:nvim_typescript#max_completion_detail = 100
let g:nvim_typescript#type_info_on_hold = 1

" coc-prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" vim-bookmarks
let g:bookmark_sign = '♥'
let g:bookmark_auto_close = 1

color dracula

" folds
" fold current function
nnoremap z{ f{zfa}

highlight BookmarkSign ctermbg=NONE ctermfg=141
highlight BookmarkAnnotationSign ctermbg=NONE ctermfg=228
