" ~/.vim/sessions/LaaS.vim:
" Vim session script.
" Created by session.vim 2.6.4 on 05 נובמבר 2014 at 13:31:05.
" Open this file in Vim and run :source % to restore your session.

set guioptions=aegit
silent! set guifont=Inconsolata\ Medium\ 12
if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if &background != 'dark'
	set background=dark
endif
if !exists('g:colors_name') || g:colors_name != 'solarized' | colorscheme solarized | endif
call setqflist([])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
let NERDTreeMapPreviewSplit = "gi"
let NERDTreeMapCloseChildren = "X"
let NERDTreeShowHidden = "0"
let EasyMotion_off_screen_search =  1 
let UltiSnipsUsePythonVersion = "<tab>"
let NERDTreeMapCloseDir = "x"
let EasyMotion_hl_move = "EasyMotionMoveHL"
let EasyMotion_move_highlight =  1 
let NERDTreeMinimalUI = "0"
let NERDTreeShowLineNumbers = "0"
let UltiSnipsExpandTrigger = "<tab>"
let NERDTreeMapOpenInTabSilent = "T"
let EasyMotion_smartcase =  0 
let NERDTreeBookmarksFile = "/home/gil/.NERDTreeBookmarks"
let UltiSnipsJumpForwardTrigger = "<c-j>"
let NERDTreeMapToggleHidden = "I"
let NERDTreeWinSize = "31"
let EasyMotion_enter_jump_first =  0 
let EasyMotion_use_upper =  0 
let UltiSnipsRemoveSelectModeMappings =  1 
let EasyMotion_hl_group_target = "EasyMotionTarget"
let NERDTreeMapPreview = "go"
let EasyMotion_ignore_exception =  0 
let NERDTreeMapActivateNode = "o"
let EasyMotion_do_mapping =  1 
let BufKillFunctionSelectingValidBuffersToDisplay = "buflisted"
let NERDTreeWinPos = "left"
let EasyMotion_disable_two_key_combo =  0 
let NERDTreeMapMenu = "m"
let EasyMotion_space_jump_first =  0 
let NERDTreeStatusline = "%{exists('b:NERDTreeRoot')?b:NERDTreeRoot.path.str():''}"
let UltiSnipsJumpBackwardTrigger = "<c-k>"
let EasyMotion_use_regexp =  1 
let BufKillCommandPrefix = "B"
let NERDTreeMapHelp = "?"
let NERDTreeMapJumpParent = "p"
let NERDTreeMapToggleFilters = "f"
let NERDTreeMapJumpPrevSibling = "<C-k>"
let SyntasticDebugTrace =  1 
let NERDTreeShowBookmarks = "0"
let NERDTreeRemoveDirCmd = "rm -rf "
let NERDTreeMapOpenInTab = "t"
let EasyMotion_show_prompt =  1 
let EasyMotion_add_search_history =  1 
let NERDTreeChDirMode = "0"
let EasyMotion_do_shade =  1 
let NERDTreeAutoCenterThreshold = "3"
let NERDTreeShowFiles = "1"
let NERDTreeMapOpenVSplit = "s"
let NERDTreeMapOpenSplit = "i"
let EasyMotion_skipfoldedline =  1 
let NERDTreeCaseSensitiveSort = "0"
let SyntasticDebugVariables =  16 
let NERDTreeHijackNetrw = "1"
let NERDTreeMapRefresh = "r"
let EasyMotion_hl_group_shade = "EasyMotionShade"
let NERDTreeHighlightCursorline = "1"
let EasyMotion_use_migemo =  0 
let NERDTreeMouseMode = "1"
let EasyMotion_re_line_anywhere = "\\v(<.|^$)|(.>|^$)|(\\l)\\zs(\\u)|(_\\zs.)|(#\\zs.)"
let EasyMotion_re_anywhere = "\\v(<.|^$)|(.>|^$)|(\\l)\\zs(\\u)|(_\\zs.)|(#\\zs.)"
let SyntasticDebugLoclist =  2 
let BufKillActionWhenBufferDisplayedInAnotherWindow = "confirm"
let NERDChristmasTree = "1"
let NERDTreeNotificationThreshold = "100"
let BufKillOverrideCtrlCaret =  0 
let NERDTreeMapJumpRoot = "P"
let EasyMotion_hl2_first_group_target = "EasyMotionTarget2First"
let BufExplorer_title = "[Buf List]"
let NERDTreeMapChdir = "cd"
let BufKillCreateMappings =  1 
let NERDTreeMapToggleZoom = "A"
let NERDTreeMapPreviewVSplit = "gs"
let EasyMotion_hl_inc_search = "EasyMotionIncSearch"
let NERDTreeMapRefreshRoot = "R"
let EasyMotion_cursor_highlight =  1 
let NERDTreeAutoCenter = "1"
let EasyMotion_hl2_second_group_target = "EasyMotionTarget2Second"
let UltiSnipsPythonPath = "/home/gil/Dropbox/vim/.vim/bundle/ultisnips/pythonx"
let BufKillVerbose =  1 
let NERDTreeMapJumpLastChild = "J"
let NERDTreeMapDeleteBookmark = "D"
let EasyMotion_grouping =  1 
let UltiSnipsListSnippets = "<c-tab>"
let EasyMotion_startofline =  1 
let NERDTreeMapJumpNextSibling = "<C-j>"
let SyntasticDebugNotifications =  4 
let EasyMotion_inc_highlight =  1 
let UltiSnipsEditSplit = "normal"
let NERDTreeCopyCmd = "cp -r "
let NERDTreeMapQuit = "q"
let NERDTreeMapChangeRoot = "C"
let NERDTreeSortDirs = "1"
let NERDTreeMapToggleFiles = "F"
let EasyMotion_keys = "asdghklqwertyuiopzxcvbnmfj;"
let NERDTreeDirArrows = "1"
let EasyMotion_force_csapprox =  0 
let EasyMotion_loaded =  1 
let EasyMotion_hl_inc_cursor = "EasyMotionIncCursor"
let NERDTreeMapOpenExpl = "e"
let NERDTreeMapJumpFirstChild = "K"
let NERDTreeMapOpenRecursively = "O"
let NERDTreeMapToggleBookmarks = "B"
let NERDTreeMapUpdir = "u"
let NERDTreeMapUpdirKeepOpen = "U"
let EasyMotion_landing_highlight =  0 
let SyntasticDebugAutocommands =  8 
let NERDTreeQuitOnOpen = "0"
let EasyMotion_prompt = "Search for {n} character(s): "
silent only
exe "cd " . escape(expand("<sfile>:p:h"), ' ')
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 ~/Dropbox/vim/.vim/bundle/vim-snippets/UltiSnips/javascript_jasmine.snippets
badd +67 ~/Dropbox/vim/.vim/bundle/angular-vim-snippets/UltiSnips/javascript/angular_js.snippets
badd +1 ~/Dropbox/vim/.vim/bundle/vim-snippets/UltiSnips/javascript.snippets
badd +1 ~/Dropbox/vim/.vim/bundle/vim-snippets/UltiSnips/javascript_angular.snippets
badd +1 ~/Dropbox/vim/.vim/bundle/vim-snippets/UltiSnips/javascript_jsdoc.snippets
argglobal
silent! argdel *
argadd /tmp/v8TEDUT/\[BufExplorer]
set lines=41 columns=170
winpos 0 0
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 34 + 85) / 170)
exe 'vert 2resize ' . ((&columns * 135 + 85) / 170)
argglobal
enew
" file NERD_tree_1
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
wincmd w
argglobal
enew
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=1
setlocal fml=1
setlocal fdn=20
setlocal fen
wincmd w
exe 'vert 1resize ' . ((&columns * 34 + 85) / 170)
exe 'vert 2resize ' . ((&columns * 135 + 85) / 170)
tabedit ~/Dropbox/vim/.vim/bundle/vim-snippets/UltiSnips/javascript_angular.snippets
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 16 + 20) / 41)
exe 'vert 1resize ' . ((&columns * 52 + 85) / 170)
exe '2resize ' . ((&lines * 21 + 20) / 41)
exe 'vert 2resize ' . ((&columns * 52 + 85) / 170)
exe '3resize ' . ((&lines * 16 + 20) / 41)
exe 'vert 3resize ' . ((&columns * 53 + 85) / 170)
exe '4resize ' . ((&lines * 21 + 20) / 41)
exe 'vert 4resize ' . ((&columns * 53 + 85) / 170)
exe '5resize ' . ((&lines * 16 + 20) / 41)
exe 'vert 5resize ' . ((&columns * 52 + 85) / 170)
exe '6resize ' . ((&lines * 21 + 20) / 41)
exe 'vert 6resize ' . ((&columns * 52 + 85) / 170)
argglobal
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 8) / 16)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
edit ~/Dropbox/vim/.vim/bundle/vim-snippets/UltiSnips/javascript_jsdoc.snippets
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 6 - ((4 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 0
wincmd w
argglobal
edit ~/Dropbox/vim/.vim/bundle/vim-snippets/UltiSnips/javascript.snippets
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 8) / 16)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
edit ~/Dropbox/vim/.vim/bundle/vim-snippets/UltiSnips/javascript.snippets
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
edit ~/Dropbox/vim/.vim/bundle/angular-vim-snippets/UltiSnips/javascript/angular_js.snippets
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=1
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 8) / 16)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
edit ~/Dropbox/vim/.vim/bundle/vim-snippets/UltiSnips/javascript_jasmine.snippets
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=1
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
exe '1resize ' . ((&lines * 16 + 20) / 41)
exe 'vert 1resize ' . ((&columns * 52 + 85) / 170)
exe '2resize ' . ((&lines * 21 + 20) / 41)
exe 'vert 2resize ' . ((&columns * 52 + 85) / 170)
exe '3resize ' . ((&lines * 16 + 20) / 41)
exe 'vert 3resize ' . ((&columns * 53 + 85) / 170)
exe '4resize ' . ((&lines * 21 + 20) / 41)
exe 'vert 4resize ' . ((&columns * 53 + 85) / 170)
exe '5resize ' . ((&lines * 16 + 20) / 41)
exe 'vert 5resize ' . ((&columns * 52 + 85) / 170)
exe '6resize ' . ((&lines * 21 + 20) / 41)
exe 'vert 6resize ' . ((&columns * 52 + 85) / 170)
tabnew
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 38 + 20) / 41)
exe 'vert 1resize ' . ((&columns * 31 + 85) / 170)
exe '2resize ' . ((&lines * 38 + 20) / 41)
exe 'vert 2resize ' . ((&columns * 127 + 85) / 170)
argglobal
enew
" file NERD_tree_2
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
wincmd w
argglobal
enew
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=1
setlocal fml=1
setlocal fdn=20
setlocal fen
wincmd w
exe '1resize ' . ((&lines * 38 + 20) / 41)
exe 'vert 1resize ' . ((&columns * 31 + 85) / 170)
exe '2resize ' . ((&lines * 38 + 20) / 41)
exe 'vert 2resize ' . ((&columns * 127 + 85) / 170)
tabnext 1
if exists('s:wipebuf')
"   silent exe 'bwipe ' . s:wipebuf
endif
" unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOI
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save

" Support for special windows like quick-fix and plug-in windows.
" Everything down here is generated by vim-session (not supported
" by :mksession out of the box).

1wincmd w
tabnext 1
let s:bufnr_save = bufnr("%")
let s:cwd_save = getcwd()
NERDTree ~/Development/Softov/Labs/MainRls/Labs/Web/LaaS
if !getbufvar(s:bufnr_save, '&modified')
  let s:wipebuflines = getbufline(s:bufnr_save, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:bufnr_save
  endif
endif
execute "cd" fnameescape(s:cwd_save)
1resize 39|vert 1resize 34|2resize 39|vert 2resize 135|
1wincmd w
tabnext 3
let s:bufnr_save = bufnr("%")
let s:cwd_save = getcwd()
NERDTree ~/Development/Softov/Labs/MainRls/Labs/Web
if !getbufvar(s:bufnr_save, '&modified')
  let s:wipebuflines = getbufline(s:bufnr_save, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:bufnr_save
  endif
endif
execute "cd" fnameescape(s:cwd_save)
1resize 39|vert 1resize 31|2resize 39|vert 2resize 138|
1wincmd w
tabnext 1
if exists('s:wipebuf')
  if empty(bufname(s:wipebuf))
if !getbufvar(s:wipebuf, '&modified')
  let s:wipebuflines = getbufline(s:wipebuf, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:wipebuf
  endif
endif
  endif
endif
doautoall SessionLoadPost
unlet SessionLoad
" vim: ft=vim ro nowrap smc=128
