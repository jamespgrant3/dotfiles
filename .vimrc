syntax on
colorscheme dracula
set number relativenumber
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set shiftwidth=2    " number of spaces to use for autoindent
set expandtab       " tabs are space

let mapleader = "\\"

nnoremap <silent> <Leader>q :q<CR>
nnoremap <silent> <Leader>w :w<CR>

" fugitive maps
nnoremap <silent> <Leader>gs :Gstatus<CR>
nnoremap <silent> <Leader>gb :Gblame<CR>
nnoremap <silent> <Leader>gc :Gcommit<CR>
nnoremap <silent> <Leader>gd :Gdiff<CR>
nnoremap <silent> <Leader>gl :Glog<CR>

" Tab navigation
nnoremap <silent> - :tabprev<CR>
nnoremap <silent> = :tabnext<CR>
nnoremap <Leader>nt :tabnew<CR>

" buffer
nnoremap <silent> <Leader>bd :bd<CR>

" denite
"   ;         - Browser currently directory and open buffers
"   <leader>g - Search current directory for occurences of given term and
"   close window if no results
"   <leader>j - Search current directory for occurences of word under cursor
nmap <silent>; :Denite file/rec -split=floating -winrow=1<CR>
nnoremap <silent> <Leader>g :<C-u>Denite grep:. -no-empty -mode=normal<CR>
nnoremap <silent> <Leader>j :<C-u>DeniteCursorWord grep:. -mode=normal<CR>

" coc-ts
nmap <silent> <leader>d <Plug>(coc-definition)
nmap <silent> <leader>r <Plug>(coc-references)
nmap <silent> <leader>i <Plug>(coc-implementation)

" cos-prettier
nmap <silent> <leader>p :Prettier<CR>
set dir=$HOME/.vim/tmp/swap

call plug#begin('~/.vim/plugged')

Plug 'Shougo/vimproc.vim', {'do' : 'make'}

Plug 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>

Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
let g:airline#extensions#tabline#formatter = 'default'

Plug 'mhinz/vim-signify'
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}

Plug 'HerringtonDarkholme/yats.vim'
" Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
" For Denite features
Plug 'Shougo/denite.nvim'
let g:deoplete#enable_at_startup = 1

Plug 'tpope/vim-fugitive'

call plug#end()

" denite key mappings
" call denite#custom#var('file/rec', 'command', ['rg', '--files', '--glob', '!.git'])
call denite#custom#map('insert', '<C-j>', '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('insert', '<C-k>', '<denite:move_to_previous_line>', 'noremap')

" Use ripgrep in place of "grep"
call denite#custom#var('grep', 'command', ['rg'])
" Custom options for ripgrep
"   --vimgrep:  Show results with every match on it's own line
"   --hidden:   Search hidden directories and files
"   --heading:  Show the file name above clusters of matches from each file
"   --S:        Search case insensitively if the pattern is all lowercase
call denite#custom#var('grep', 'default_opts', ['--hidden', '--vimgrep', '--heading', '-S'])

" Recommended defaults for ripgrep via Denite docs
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])

" coc prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile
