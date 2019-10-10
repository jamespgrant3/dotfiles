syntax on
colorscheme dracula
set number relativenumber
set dir=$HOME/.vim/tmp/swap
set rtp+=~/.fzf
set number relativenumber
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set shiftwidth=2    " number of spaces to use for autoindent
set expandtab       " tabs are space

call plug#begin('~/.vim/plugged')

Plug 'hashivim/vim-terraform'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}

Plug 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>
" show hidden/dotfiles
let NERDTreeShowHidden=1

Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
let g:airline#extensions#tabline#formatter = 'default'

Plug 'mhinz/vim-signify'
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}

Plug 'HerringtonDarkholme/yats.vim'
Plug 'tpope/vim-fugitive'

call plug#end()


let mapleader="\\"

nnoremap <silent> <Leader>q :q<CR>
nnoremap <silent> <Leader>w :w<CR>

" fzf
nnoremap <silent>; :FZF<CR>

" Better split navigation
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>

" Tab navigation
nnoremap - :tabprev<CR>
nnoremap = :tabnext<CR><Paste>
nnoremap <silent> <Leader>nt :tabnew<CR>

" buffer
nnoremap <silent> <Leader>bd :bd<CR>

autocmd FileType typescript nmap <buffer> <Leader>r :TSRefs<CR>
autocmd FileType typescript nmap <buffer> <Leader>e :TSRename<CR>
autocmd FileType typescript nmap <buffer> <Leader>i :TSImport<CR>
autocmd FileType typescript nmap <buffer> <Leader>t :TSType<CR>

nmap <Leader>i <Plug>(coc-fix-current)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> <Leader>[ <Plug>(coc-diagnostic-prev)
nmap <silent> <Leader>] <Plug>(coc-diagnostic-next)
nmap <Leader>i <Plug>(coc-fix-current)
nnoremap <silent> K :call <SID>show_documentation()<CR>
autocmd FileType typescript nmap <buffer> <Leader>e <Plug>(coc-rename)

" Use tab/shift+tab to navigate autocomplete options.
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
autocmd FileType typescript nmap <buffer> <C-]> :TSDefPreview<CR>

autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
     call CocAction('doHover')
  endif
endfunction

let g:nvim_typescript#max_completion_detail = 100
let g:nvim_typescript#type_info_on_hold = 1

" Sets the height for fugitive's git status window.
set previewheight=25

" fugitive maps
nnoremap <silent> <Leader>gs :Gstatus<CR>
nnoremap <silent> <Leader>gb :Gblame<CR>
nnoremap <silent> <Leader>gc :Gcommit<CR>
nnoremap <silent> <Leader>gd :Gdiff<CR>
nnoremap <silent> <Leader>gl :Glog<CR>

" coc-prettier
nmap <silent> <leader>p :Prettier<CR>
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" coc.nvim config
set cmdheight=2
set hidden
