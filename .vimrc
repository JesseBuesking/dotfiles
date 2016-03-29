" automatic installation
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" Colorschemes
Plug 'captbaritone/molokai'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'altercation/vim-colors-solarized'
Plug 'fxn/vim-monochrome'
Plug 'chriskempson/base16-vim'
Plug 'NLKNguyen/papercolor-theme'
" 
" Syntax
Plug 'tpope/vim-git', { 'for': 'git' }
Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' }
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'JamshedVesuna/vim-markdown-preview', { 'for': 'markdown' }
" 
" " Completion
" Plug 'mattn/emmet-vim', { 'for': 'html' }
" 
" " Make % match xml tags
" Plug 'edsono/vim-matchit', { 'for': ['html', 'xml'] }
" 
" " Make tab handle all completions
Plug 'ervandew/supertab'
" 
" " Syntastic: Code linting errors
" Plug 'scrooloose/syntastic', { 'for': ['php', 'python', 'javascript', 'css'] }
" 
" " Pairs of handy bracket mappings
" Plug 'tpope/vim-unimpaired'
" 
" " Fancy statusline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" 
" " Rename files from within vim
" Plug 'tpope/vim-eunuch'
" 
" " Make commenting easier
" Plug 'tpope/vim-commentary'
" 
" " Adjust 'shiftwidth' and 'expandtab' heuristically based on the current file
" Plug 'tpope/vim-sleuth'
" 
" " CamelCase motions through words
" Plug 'bkad/CamelCaseMotion'
" 
" " Split and join lines of code intelligently
" Plug 'AndrewRadev/splitjoin.vim'
" 
" Plug 'gcmt/taboo.vim'
" 
" " Split navigation that works with tmux
" Plug 'christoomey/vim-tmux-navigator'
" 
" " Change brackets and quotes
" Plug 'tpope/vim-surround'
" " Make vim-surround repeatable with .
" Plug 'tpope/vim-repeat'
" 
" " Custom motions
" 
" " Indent object
" Plug 'michaeljsmith/vim-indent-object'
" " Camel Case object
" Plug 'bkad/CamelCaseMotion'
" " Argumetn object
" Plug 'vim-scripts/argtextobj.vim'
" 
" " Run Python tests in tmux splits
" " Plug 'captbaritone/projects/vim-vigilant', { 'for': 'python' }
" Plug '~/projects/vim-vigilant', { 'for': 'python' }
" Plug 'benmills/vimux', { 'for': ['python', 'javascript'] }
" 
" " Python completion and tag navigation
" Plug 'davidhalter/jedi-vim', { 'for': 'python' }
" 
" " Take notes and keep todo lists in vim
" Plug 'vimwiki/vimwiki'
" 
" " Find the class/method based on cursor position
" Plug 'vim-scripts/pythonhelper'
" 
" " 'Vastly improved Javascript indentation and syntax support in Vim'
" Plug 'pangloss/vim-javascript'
" 
" Plug 'reedes/vim-pencil'
" 
" " Visualize undo tree
" Plug 'mbbill/undotree'
" 
" Plug 'parkr/vim-jekyll'

Plug 'Valloric/YouCompleteMe'

" file browser -- open with :NERDTree
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'

Plug 'scrooloose/syntastic'								  " syntax check on save
Plug 'nvie/vim-flake8'											  " pep8 support

Plug 'ctrlpvim/ctrlp.vim'
" Plug 'wincent/command-t'

Plug 'klen/python-mode'
Plug 'fisadev/vim-isort'

" file searching
Plug 'mileszs/ack.vim'

" git changes in gutter (and airline)
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" improves motions
Plug 'easymotion/vim-easymotion'

" line commenting
Plug 'scrooloose/nerdcommenter'

" narrowing in on a region
Plug 'chrisbra/NrrwRgn'

" for finding/fixing trailing whitespace
Plug 'bronson/vim-trailing-whitespace'

call plug#end()

" ------------------------------------------------------------------------------
" key bindings
" ------------------------------------------------------------------------------

let mapleader=","

" tabs -------------------------------------------------------------------------
" CTRL-Tab is next tab
nnoremap <C-Tab> :<C-U>tabnext<CR>
inoremap <C-Tab> <C-\><C-N>:tabnext<CR>
cnoremap <C-Tab> <C-C>:tabnext<CR>

" CTRL-SHIFT-Tab is previous tab
nnoremap <C-S-Tab> :<C-U>tabprevious<CR>
inoremap <C-S-Tab> <C-\><C-N>:tabprevious<CR>
cnoremap <C-S-Tab> <C-C>:tabprevious<CR>

" nnoremap <C-t>     :tabnew<CR>
" inoremap <C-t>     <Esc>:tabnew<CR>

" map ctrl-shift-f to ack -- all files from current directory search
nnoremap <C-S-f> :Ack 

" improve default / search
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" make <leader>jd jump to the definition of the cursor'd item
nnoremap <leader>jd :YcmCompleter GoTo<CR>

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" basic settings
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set colorcolumn=81
highlight ColorColumn ctermbg=darkgray

" color scheme settings
colorscheme PaperColor
set background=dark
if has('gui_running')
	set background=dark
endif

" pretty python code
let python_highlight_all=1
syntax on

" show line numbers
:set number

" hide .pyc files from nerdtree
let NERDTreeIgnore=['\.pyc$']                         " ignore files in NERDTree
let NERDTreeShowHidden=1									   " show .gitignore
set guioptions-=T									  " remove toolbar from gvim
set guioptions-=L						             " hide left-hand scroollbar
set guioptions-=r								    " hide right-hand scroollbar

" speed up ctrlp by ignoring certain files
let g:ctrlp_user_command = {
	\ 'types': {
	\ 1: ['.git', 'cd %s && git ls-files'],
	\ 2: ['.hg', 'hg --cwd %s locate -I .'],
	\ },
	\ 'fallback': 'ag %s -i --nocolor --nogroup --hidden
	\ --ignore out
	\ --ignore .git
	\ --ignore .svn
	\ --ignore .hg
	\ --ignore .DS_Store
	\ --ignore "**/*.pyc"
	\ -g ""'
	\ }

" speed up ctrlp by using ag -- https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  unlet g:ctrlp_user_command
  let g:ctrlp_user_command='ag %s -l --nocolor -g ""'
endif

" Ack.vim
if executable('ag')
  " let g:ackprg = 'ag --vimgrep'
  let g:ackprg = 'ag'
endif

" sane folding by default -- necessary for python-mode
set foldlevel=1

let vim_markdown_preview_github=1						 " for markdown previews
let vim_markdwon_preview_toggle=2

" make ctrlp follow NERDTree's current working directory
let g:NERDTreeChDirMode       = 2
let g:ctrlp_working_path_mode = 'rw'
