" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Default behavior
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

scriptencoding utf-8
set encoding=utf-8
set nobackup  " do not keep a backup file
set history=50  " keep 50 lines of command line history
set ruler       " show the cursor position all the time
set showcmd     " display incomplete commands
set incsearch   " do incremental searching
set showmode    " message on status line to show current mode
set number      " print the line number in front of each line
set hidden      " don't unload buffer when it is abandoned
set laststatus=2  " always show a status line
set ignorecase  " searches are case-insensitive by default
set smartcase   " searches are case-sensitive if search pattern contains upper-case letters
set shortmess+=I    " Suppress splash screen
set nowrap      " guess
set sessionoptions=buffers,sesdir,folds,globals,options,resize,tabpages,winpos,winsize,blank
let &clipboard =  'unnamed,' . &clipboard   " unnamed register uses '*' clipboard register
if has ('unnamedplus')
  let &clipboard =  'unnamedplus,' . &clipboard   " unnamed register also uses '+' clipboard register
endif

set guioptions-=m   " Don't show the menu bar
set guioptions-=T   " Don't show toolbar
set guioptions-=r   " Don't show right-hand scrollbar
set guioptions-=L   " Don't show left-hand scrollbar

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Enable file type detection.
" Use the default filetype settings, so that mail gets 'tw' set to 72,
" 'cindent' is on in C files, etc.
" Also load indent files, to automatically do language-dependent indenting.
filetype plugin indent on

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Display settings
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

set background=dark

" tab settings and indentation guide settings. Got from http://stackoverflow.com/a/2159997
" http://vim.wikia.com/wiki/Indent_with_tabs,_align_with_spaces
" use 2 for tabs
set tabstop=2 softtabstop=0 shiftwidth=2 noexpandtab preserveindent copyindent
" display indentation guides
set listchars=tab:¦\ ,trail:·,extends:»,precedes:«,nbsp:˳,eol:$
set nolist
highlight SpecialKey guifg=Green  " Mark tabs in green

" Set some os-specific settings
if has('win32')
  au GUIENTER * simalt ~x         " Force full-screen
  set guifont=Anonymous_Pro:h12:cANSI
elseif has ('unix')
  set guifont=Inconsolata\ Medium\ 12
endif

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autocommnads
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
    au!

    " For all text files set 'textwidth' to 78 characters.
    autocmd FileType text setlocal

    " redirect all command output text to register 'o'
    autocmd BufEnter * redir @o

    " When editing a file, always jump to the last known cursor position.
    " Don't do it when the position is invalid or when inside an event handler
    " (happens when dropping a file on gvim).
    " Also don't do it when the mark is in the first line, that is the default
    " position when opening a file.
    autocmd BufReadPost *
          \ if line("'\"") > 1 && line("'\"") <= line("$") |
          \   exe "normal! g`\"" |
          \ endif


    " convert spaces to tabs when reading file
    "autocmd! bufreadpost *
    "     \ if &modifiable |
    "     \   set noexpandtab | retab! 2 |
    "     \ endif
    " convert tabs to spaces before writing file
    "autocmd! bufwritepre *
    "     \ if &modifiable |
    "     \   set expandtab | retab! 2 |
    "     \ endif
    " convert spaces to tabs after writing file (to show guides again)
    "autocmd! bufwritepost *
    "     \ if &modifiable |
    "     \   set noexpandtab | retab! 2 |
    "     \ endif

    " """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " Plugin-specific Autocoommands
    " """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

    " syntaxcomplete
    if exists("+omnifunc")
      autocmd Filetype *
            \ if &omnifunc == "" |
            \   setlocal omnifunc=syntaxcomplete#Complete |
            \ endif
    endif
    " javascript-libraries-syntax.vim
    autocmd BufReadPre *.js let b:javascript_lib_use_jquery = 1
    autocmd BufReadPre *.js let b:javascript_lib_use_underscore = 1
    autocmd BufReadPre *.js let b:javascript_lib_use_backbone = 1
    autocmd BufReadPre *.js let b:javascript_lib_use_prelude = 1
    autocmd BufReadPre *.js let b:javascript_lib_use_angularjs = 1

    " TERN
    autocmd BufReadPost *.js nnoremap <A-g> :TernDef<CR>
    autocmd BufReadPost *.js nnoremap <A-r> :TernRefs<CR>

    " enhanced javascript syntax
    autocmd FileType javascript call JavaScriptFold()
  augroup END

else
  set autoindent            " always set autoindenting on

endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
        \ | wincmd p | diffthis
endif

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pluging-specific settings
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ----------------------------------- pathogen --------------------------------
" Add pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
Helptags

" ---------------------------- angular-vim-snippets ---------------------------
" ---------------------------- solarized color scheme  ------------------------
colorscheme solarized

" -------------------- javascript-libraries-syntax.vim ------------------------
" set javascript syntax highlighting
let g:used_javascript_libs = 'angularjs,underscore'

" ---------------------------------- Ack --------------------------------------
" If the Silver-Searcher is installed, use it ('ag') as an Ack replacement
if executable('ag')
  let g:ackprg = 'ag'
endif

" --------------------------- vim-indent-guides -------------------------------
" Enable indentation guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_color_change_percent = 3

" ------------------------------ vim-session ----------------------------------
let g:session_autosave = 'no'


" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key Mappings
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Insert mode mappings, to facilitate navigation:
inoremap <A-l>  <right>
inoremap <A-h>  <left>
inoremap <A-k>  <up>
inoremap <A-j>  <down>
inoremap <A-a>  <home>
inoremap <A-e>  <end>
inoremap <A-w>  <C-o>w
inoremap <A-b>  <C-o>b

" replace linewise movement with row-wise movement
nmap j gj
nmap k gk

" command-line editing mappings for navigation, similar to insert mode
cnoremap <A-l>  <right>
cnoremap <A-h>  <left>
" recall previous (older) command-line
cnoremap <A-k>  <up>
" recall newer command-line
cnoremap <A-j>  <down>
cnoremap <A-a>  <home>
cnoremap <A-e>  <end>
" forward one word
cnoremap <A-w>  <S-Right>
" back one word
cnoremap <A-b>  <S-Left>

" <A-f> - Current file's name to clipboard
nnoremap <A-f> :let @+ = expand ("%:t")<CR>
" <A-p> - Current file's path to clipboard
nnoremap <A-p> :let @+ = expand ("%:p")<CR>
" <A-d> - Current file's directory to clipboard
nnoremap <A-d> :let @+ = expand ("%:p:h")<CR>
" <A-x> - delete buffer, without closing window (defined in bufkill plugin)
nnoremap <A-x> :BD<CR>

" <ENTER> - For modifiable buffers split lines at cursor position, removing trailing whitespace, and putting cursor on
" beginning of next line
function! MyMapEnter ()
  if &modifiable
    nnoremap <buffer> <ENTER>   <ESc>i<CR><ESC>k:s/\s*$//<CR>j^:nohl<CR>
  endif
endfunction
autocmd! BufAdd * call MyMapEnter ()
autocmd! BufNewFile * call MyMapEnter ()

" <ESC> removes highlight
nnoremap <ESC>   :nohl \| match Search // <CR>

" <F5> toggle undo-tree
nnoremap    <F5>    :GundoToggle<cr>

" <F2> toggle NERDTree
nnoremap    <F2>    :NERDTreeToggle<cr>

" cycle to next open tab
nnoremap <C-S-l> :tabnext<CR>

" cycle to previous open tab
nnoremap <C-S-h> :tabprevious<CR>

" move through windows in tab
nnoremap <A-k>  :wincmd k<CR>
nnoremap <A-j>  :wincmd j<CR>
nnoremap <A-l>  :wincmd l<CR>
nnoremap <A-h>  :wincmd h<CR>

" <A-b> - show the buffer explorer
nnoremap <A-b> :BufExplorer<CR>

" <F9> opens .vimrc file for edit in a new tab
nnoremap <F9> :tabe $MYVIMRC<CR>

" <F6> sources .vimrc file
nnoremap <F6> :so $MYVIMRC<CR>

" <A-s>c - CSearchLast - search for last search pattern in active window. Results go in
" quickfix window, which is automatically opened
function! CSearchLast ()
  cgetfile /dev/null
  g//caddexpr expand("%") . ":" . line(".") .  ":" . getline(".")
  nnoremap <buffer> <F3> :cnext <CR>
  copen
endfunction
nnoremap <A-s>c :call CSearchLast ()<CR>

" <A-s>l - LSearchLast - search for last search pattern in active window. Results go in
" location-list window, which is automatically opened
function! LSearchLast ()
  lgetfile /dev/null
  g//laddexpr expand("%") . ":" . line(".") .  ":" . getline(".")
  nnoremap <buffer> <F3> :lnext <CR>
  lopen
endfunction
nnoremap <A-s>l :call LSearchLast ()<CR>

nohl

