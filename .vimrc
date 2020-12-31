syntax on

set number relativenumber
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set shiftwidth=2    " number of spaces to use for autoindent
set expandtab       " tabs are space
set clipboard=unnamed
set cmdheight=2
set hidden
set rtp+=~/.fzf
set splitbelow
set splitright
set ignorecase
set autoread
set noswapfile

let mapleader = "\\"

autocmd BufNewFile,BufRead *.md set filetype=markdown
autocmd BufNewFile,BufRead *.tsx set filetype=typescript

call plug#begin('~/.vim/plugged')

Plug 'dracula/vim', {'as': 'dracula'}
Plug 'hashivim/vim-terraform'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'vim-airline/vim-airline'
Plug 'mhinz/vim-signify'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'HerringtonDarkholme/yats.vim'
Plug 'tpope/vim-fugitive'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'ryanoasis/vim-devicons'

call plug#end()

nnoremap <silent> <leader>s :so %<CR>
nnoremap <silent> <leader>q :q<CR>
nnoremap <silent> <leader>w :w<CR>
" copy current file path into clipboard
nnoremap <silent> <leader>fn :let @*=@%<CR>

" toggle line numbering
nnoremap <silent> <leader>rn :set rnu!<CR>

" fugitive maps
nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>gc :Gcommit<CR>
nnoremap <silent> <leader>gd :Gdiff<CR>
nnoremap <silent> <leader>gl :Glog<CR>

" coc-explorer
nmap <silent> <space>e :CocCommand explorer<CR>

" tab navigation
nnoremap <silent> - :tabprev<CR>
nnoremap <silent> = :tabnext<CR>
nnoremap <leader>nt :tabnew<CR>

" buffer
nnoremap <silent> <leader>bd :bd<CR>

nnoremap <silent>; :FZF<CR>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> <leader>[ <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>] <Plug>(coc-diagnostic-next)
nmap <leader>i <Plug>(coc-fix-current)
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

" cos-prettier
nmap <silent> <leader>p :Prettier<CR>
set dir=$HOME/.vim/tmp/swap

" nerdtree bindings
" open file in nerdtree
" nmap <silent> <leader>f :NERDTreeFind<CR>
" show hidden/dotfiles
" let NERDTreeShowHidden=1
" close after opening a file
" let NERDTreeQuitOnOpen=1
" map <C-n> :NERDTreeToggle<CR>

let g:airline#extensions#tabline#formatter = 'default'

" better split navigation
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>

autocmd FileType typescript nmap <buffer> <leader>r :TSRefs<CR>
autocmd FileType typescript nmap <buffer> <leader>e :TSRename<CR>
" autocmd FileType typescript nmap <buffer> <leader>i :TSImport<CR>
autocmd FileType typescript nmap <buffer> <leader>t :TSType<CR>
autocmd FileType typescript nmap <buffer> <C-]> :TSDefPreview<CR>

" use tab/shift+tab to navigate autocomplete options.
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

let g:nvim_typescript#max_completion_detail = 100
let g:nvim_typescript#type_info_on_hold = 1

" sets the height for fugitive's git status window.
set previewheight=25

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
