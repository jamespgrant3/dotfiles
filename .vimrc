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
set scrolloff=3

" prevent vim ex mode, annoying
map q: <Nop>
nnoremap Q <nop>
let mapleader = "\\"

nnoremap <silent> <leader>gp :Git -c push.default=current push --no-verify<CR>

"autocmd BufNewFile,BufRead *.md set filetype=markdown
"autocmd BufNewFile,BufRead *.tsx set filetype=typescript
"nnoremap <silent>cp :!cp ../../.env.development.local ./.env.development.local<cr>

call plug#begin('~/.vim/plugged')
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
"Plug 'dracula/vim', {'as': 'dracula'}
Plug 'hashivim/vim-terraform'
"Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'HerringtonDarkholme/yats.vim'
Plug 'tpope/vim-fugitive'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
"Plug 'psliwka/vim-smoothie'

Plug 'wellle/context.vim'
"Plug 'ThePrimeagen/git-worktree.nvim'
Plug 'nvim-lualine/lualine.nvim'
"Plug 'nvim-lua/popup.nvim'
" keep
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

call plug#end()

" experiment bindings
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fs <cmd>Telescope grep_string<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" git-worktree bindings
"nnoremap <leader>wt :lua require('telescope').extensions.git_worktree.git_worktrees()<cr>
"nnoremap <leader>cwt :lua require('telescope').extensions.git_worktree.create_git_worktree()<cr>

" reload color scheme, useful when window is in an odd state
"nnoremap <silent> <leader>cs :colorscheme dracula<cr>
nnoremap <silent> <leader>cs :colorscheme catppuccin<cr>
lua << EOF
require('telescope').setup{
  defaults = {
    file_ignore_patterns = { "node_modules" },
  },
  pickers = {
    find_files = {
      theme = "ivy",
    },
    git_files = {
      theme = "ivy",
    },
    grep_string = {
      theme = "ivy",
    },
    live_grep = {
      theme = "ivy",
    }
  }
}
EOF

lua << END
--require("telescope").load_extension("git_worktree")
--
--local Worktree = require("git-worktree")
--local api = vim.api
--
--Worktree.on_tree_change(function(op, metadata)
  --if op == Worktree.Operations.Switch then
  --  api.nvim_command(':!cp -i ../../.env.development.local ./.env.development.local')
  --end
--end)


--nnoremap <silent>cp :!cp ../../.env.development.local ./.env.development.local<cr>

END
    " lualine_b = {'branch', 'diff', 'diagnostics'},
lua << END
require('lualine').setup({
  options = {
    icons_enabled = true,
    theme = 'catppuccin',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = false,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff'},
    lualine_c = {'filename'},
    lualine_x = {},
    lualine_y = {},
    --lualine_z = {}
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
})

require("nvim-web-devicons").setup{ default = true }
END

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

" markdown preview
nmap <silent> <leader>md :CocCommand markdown-preview-enhanced.openPreview<CR>

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

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

"let g:nvim_typescript#max_completion_detail = 100
"let g:nvim_typescript#type_info_on_hold = 1

" coc-prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" vim-bookmarks
let g:bookmark_sign = '♥'
let g:bookmark_auto_close = 1

nmap <leader><leader> <Plug>BookmarkToggle
nmap <leader>ba <Plug>BookmarkAnnotate
nmap <leader>bsa <Plug>BookmarkShowAll
nmap <leader>bn <Plug>BookmarkNext
nmap <leader>bp <Plug>BookmarkPrev
nmap <leader>bc <Plug>BookmarkClear
nmap <leader>bca <Plug>BookmarkClearAll
nmap <leader>bmu <Plug>BookmarkMoveUp
nmap <leader>bmd <Plug>BookmarkMoveDown
nmap <leader>bmt <Plug>BookmarkMoveToLine

"color dracula
color catppuccin
" folds
" fold current function
nnoremap z{ f{zfa}

highlight BookmarkSign ctermbg=NONE ctermfg=141
highlight BookmarkAnnotationSign ctermbg=NONE ctermfg=228
