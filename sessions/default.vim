let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <expr> <Plug>(coc-snippets-expand-jump) coc#_insert_key('request', 'snippets-expand-jump', 1)
inoremap <silent> <expr> <Plug>(coc-snippets-expand) coc#_insert_key('request', 'snippets-expand', 1)
inoremap <silent> <Plug>CocRefresh =coc#_complete()
imap <C-J> <Plug>(coc-snippets-expand-jump)
inoremap <silent> <expr> <C-@> coc#refresh()
inoremap <silent> <expr> <Nul> coc#refresh()
inoremap <expr> <S-Tab> pumvisible() ? "\" : "\"
inoremap <C-E> <End>
inoremap <C-A> <Home>
map  <Home>
map  <End>
nmap  w :CocCommand explorer
vmap  r <Plug>(coc-translator-rv)
nmap  r <Plug>(coc-translator-r)
vmap  e <Plug>(coc-translator-ev)
nmap  e <Plug>(coc-translator-e)
vmap  t <Plug>(coc-translator-pv)
nmap  t <Plug>(coc-translator-p)
xmap  x <Plug>(coc-convert-snippet)
nmap  f <Plug>(coc-format-selected)
xmap  f <Plug>(coc-format-selected)
nmap  rn <Plug>(coc-rename)
nmap  a <Plug>(coc-codeaction-selected)
xmap  a <Plug>(coc-codeaction-selected)
map H h
map J j
vmap K K
omap K K
map L l
map Q :q
map R :source ~/.vim/vimrc
map S :w
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gd <Plug>(coc-definition)
map r :call CompileRunGcc()
map rc :e ~/.vim/vimrc
map xc :+tabnext
map xz :-tabnext
map xx :tabe
map xs :set splitbelow:split
map xw :set nosplitbelow:split
map xa :set nosplitright:vsplit
map xd :set splitright:vsplit
nnoremap <silent> <Plug>(coc-translator-h) :call coc#rpc#notify('doKeymap', ['translator-h'])
vnoremap <silent> <Plug>(coc-translator-rv) :call coc#rpc#notify('doKeymap', ['translator-rv'])
nnoremap <silent> <Plug>(coc-translator-r) :call coc#rpc#notify('doKeymap', ['translator-r'])
vnoremap <silent> <Plug>(coc-translator-ev) :call coc#rpc#notify('doKeymap', ['translator-ev'])
nnoremap <silent> <Plug>(coc-translator-e) :call coc#rpc#notify('doKeymap', ['translator-e'])
vnoremap <silent> <Plug>(coc-translator-pv) :call coc#rpc#notify('doKeymap', ['translator-pv'])
nnoremap <silent> <Plug>(coc-translator-p) :call coc#rpc#notify('doKeymap', ['translator-p'])
vnoremap <silent> <Plug>(coc-explorer-action-v->>) :call coc#rpc#request('doKeymap', ['explorer-action-v->>'])
nnoremap <silent> <Plug>(coc-explorer-action-n->>) :call coc#rpc#request('doKeymap', ['explorer-action-n->>'])
vnoremap <silent> <Plug>(coc-explorer-action-v-<<) :call coc#rpc#request('doKeymap', ['explorer-action-v-<<'])
nnoremap <silent> <Plug>(coc-explorer-action-n-<<) :call coc#rpc#request('doKeymap', ['explorer-action-n-<<'])
vnoremap <silent> <Plug>(coc-explorer-action-v-]c) :call coc#rpc#request('doKeymap', ['explorer-action-v-]c'])
nnoremap <silent> <Plug>(coc-explorer-action-n-]c) :call coc#rpc#request('doKeymap', ['explorer-action-n-]c'])
vnoremap <silent> <Plug>(coc-explorer-action-v-[c) :call coc#rpc#request('doKeymap', ['explorer-action-v-[c'])
nnoremap <silent> <Plug>(coc-explorer-action-n-[c) :call coc#rpc#request('doKeymap', ['explorer-action-n-[c'])
vnoremap <silent> <Plug>(coc-explorer-action-v-]d) :call coc#rpc#request('doKeymap', ['explorer-action-v-]d'])
nnoremap <silent> <Plug>(coc-explorer-action-n-]d) :call coc#rpc#request('doKeymap', ['explorer-action-n-]d'])
vnoremap <silent> <Plug>(coc-explorer-action-v-[d) :call coc#rpc#request('doKeymap', ['explorer-action-v-[d'])
nnoremap <silent> <Plug>(coc-explorer-action-n-[d) :call coc#rpc#request('doKeymap', ['explorer-action-n-[d'])
vnoremap <silent> <Plug>(coc-explorer-action-v-]]) :call coc#rpc#request('doKeymap', ['explorer-action-v-]]'])
nnoremap <silent> <Plug>(coc-explorer-action-n-]]) :call coc#rpc#request('doKeymap', ['explorer-action-n-]]'])
vnoremap <silent> <Plug>(coc-explorer-action-v-[[) :call coc#rpc#request('doKeymap', ['explorer-action-v-[['])
nnoremap <silent> <Plug>(coc-explorer-action-n-[[) :call coc#rpc#request('doKeymap', ['explorer-action-n-[['])
vnoremap <silent> <Plug>(coc-explorer-action-v-b) :call coc#rpc#request('doKeymap', ['explorer-action-v-b'])
nnoremap <silent> <Plug>(coc-explorer-action-n-b) :call coc#rpc#request('doKeymap', ['explorer-action-n-b'])
vnoremap <silent> <Plug>(coc-explorer-action-v-B) :call coc#rpc#request('doKeymap', ['explorer-action-v-B'])
nnoremap <silent> <Plug>(coc-explorer-action-n-B) :call coc#rpc#request('doKeymap', ['explorer-action-n-B'])
vnoremap <silent> <Plug>(coc-explorer-action-v-F) :call coc#rpc#request('doKeymap', ['explorer-action-v-F'])
nnoremap <silent> <Plug>(coc-explorer-action-n-F) :call coc#rpc#request('doKeymap', ['explorer-action-n-F'])
vnoremap <silent> <Plug>(coc-explorer-action-v-f) :call coc#rpc#request('doKeymap', ['explorer-action-v-f'])
nnoremap <silent> <Plug>(coc-explorer-action-n-f) :call coc#rpc#request('doKeymap', ['explorer-action-n-f'])
vnoremap <silent> <Plug>(coc-explorer-action-v-gd) :call coc#rpc#request('doKeymap', ['explorer-action-v-gd'])
nnoremap <silent> <Plug>(coc-explorer-action-n-gd) :call coc#rpc#request('doKeymap', ['explorer-action-n-gd'])
vnoremap <silent> <Plug>(coc-explorer-action-v-X) :call coc#rpc#request('doKeymap', ['explorer-action-v-X'])
nnoremap <silent> <Plug>(coc-explorer-action-n-X) :call coc#rpc#request('doKeymap', ['explorer-action-n-X'])
vnoremap <silent> <Plug>(coc-explorer-action-v-q) :call coc#rpc#request('doKeymap', ['explorer-action-v-q'])
nnoremap <silent> <Plug>(coc-explorer-action-n-q) :call coc#rpc#request('doKeymap', ['explorer-action-n-q'])
vnoremap <silent> <Plug>(coc-explorer-action-v-?) :call coc#rpc#request('doKeymap', ['explorer-action-v-?'])
nnoremap <silent> <Plug>(coc-explorer-action-n-?) :call coc#rpc#request('doKeymap', ['explorer-action-n-?'])
vnoremap <silent> <Plug>(coc-explorer-action-v-R) :call coc#rpc#request('doKeymap', ['explorer-action-v-R'])
nnoremap <silent> <Plug>(coc-explorer-action-n-R) :call coc#rpc#request('doKeymap', ['explorer-action-n-R'])
vnoremap <silent> <Plug>(coc-explorer-action-v-zh) :call coc#rpc#request('doKeymap', ['explorer-action-v-zh'])
nnoremap <silent> <Plug>(coc-explorer-action-n-zh) :call coc#rpc#request('doKeymap', ['explorer-action-n-zh'])
vnoremap <silent> <Plug>(coc-explorer-action-v-.) :call coc#rpc#request('doKeymap', ['explorer-action-v-.'])
nnoremap <silent> <Plug>(coc-explorer-action-n-.) :call coc#rpc#request('doKeymap', ['explorer-action-n-.'])
vnoremap <silent> <Plug>(coc-explorer-action-v-cw) :call coc#rpc#request('doKeymap', ['explorer-action-v-cw'])
nnoremap <silent> <Plug>(coc-explorer-action-n-cw) :call coc#rpc#request('doKeymap', ['explorer-action-n-cw'])
vnoremap <silent> <Plug>(coc-explorer-action-v-M) :call coc#rpc#request('doKeymap', ['explorer-action-v-M'])
nnoremap <silent> <Plug>(coc-explorer-action-n-M) :call coc#rpc#request('doKeymap', ['explorer-action-n-M'])
vnoremap <silent> <Plug>(coc-explorer-action-v-K) :call coc#rpc#request('doKeymap', ['explorer-action-v-K'])
nnoremap <silent> <Plug>(coc-explorer-action-n-K) :call coc#rpc#request('doKeymap', ['explorer-action-n-K'])
vnoremap <silent> <Plug>(coc-explorer-action-v-a) :call coc#rpc#request('doKeymap', ['explorer-action-v-a'])
nnoremap <silent> <Plug>(coc-explorer-action-n-a) :call coc#rpc#request('doKeymap', ['explorer-action-n-a'])
vnoremap <silent> <Plug>(coc-explorer-action-v-dD) :call coc#rpc#request('doKeymap', ['explorer-action-v-dD'])
nnoremap <silent> <Plug>(coc-explorer-action-n-dD) :call coc#rpc#request('doKeymap', ['explorer-action-n-dD'])
vnoremap <silent> <Plug>(coc-explorer-action-v-pp) :call coc#rpc#request('doKeymap', ['explorer-action-v-pp'])
nnoremap <silent> <Plug>(coc-explorer-action-n-pp) :call coc#rpc#request('doKeymap', ['explorer-action-n-pp'])
vnoremap <silent> <Plug>(coc-explorer-action-v-dd) :call coc#rpc#request('doKeymap', ['explorer-action-v-dd'])
nnoremap <silent> <Plug>(coc-explorer-action-n-dd) :call coc#rpc#request('doKeymap', ['explorer-action-n-dd'])
vnoremap <silent> <Plug>(coc-explorer-action-v-yy) :call coc#rpc#request('doKeymap', ['explorer-action-v-yy'])
nnoremap <silent> <Plug>(coc-explorer-action-n-yy) :call coc#rpc#request('doKeymap', ['explorer-action-n-yy'])
vnoremap <silent> <Plug>(coc-explorer-action-v-yn) :call coc#rpc#request('doKeymap', ['explorer-action-v-yn'])
nnoremap <silent> <Plug>(coc-explorer-action-n-yn) :call coc#rpc#request('doKeymap', ['explorer-action-n-yn'])
vnoremap <silent> <Plug>(coc-explorer-action-v-yp) :call coc#rpc#request('doKeymap', ['explorer-action-v-yp'])
nnoremap <silent> <Plug>(coc-explorer-action-n-yp) :call coc#rpc#request('doKeymap', ['explorer-action-n-yp'])
vnoremap <silent> <Plug>(coc-explorer-action-v-l) :call coc#rpc#request('doKeymap', ['explorer-action-v-l'])
nnoremap <silent> <Plug>(coc-explorer-action-n-l) :call coc#rpc#request('doKeymap', ['explorer-action-n-l'])
vnoremap <silent> <Plug>(coc-explorer-action-v-n) :call coc#rpc#request('doKeymap', ['explorer-action-v-n'])
nnoremap <silent> <Plug>(coc-explorer-action-n-n) :call coc#rpc#request('doKeymap', ['explorer-action-n-n'])
vnoremap <silent> <Plug>(coc-explorer-action-v-O) :call coc#rpc#request('doKeymap', ['explorer-action-v-O'])
nnoremap <silent> <Plug>(coc-explorer-action-n-O) :call coc#rpc#request('doKeymap', ['explorer-action-n-O'])
nnoremap <silent> <Plug>(coc-explorer-action-n-o) :call coc#rpc#request('doKeymap', ['explorer-action-n-o'])
vnoremap <silent> <Plug>(coc-explorer-action-v-I) :call coc#rpc#request('doKeymap', ['explorer-action-v-I'])
nnoremap <silent> <Plug>(coc-explorer-action-n-I) :call coc#rpc#request('doKeymap', ['explorer-action-n-I'])
vnoremap <silent> <Plug>(coc-explorer-action-v-[cr]) :call coc#rpc#request('doKeymap', ['explorer-action-v-[cr]'])
nnoremap <silent> <Plug>(coc-explorer-action-n-[cr]) :call coc#rpc#request('doKeymap', ['explorer-action-n-[cr]'])
vnoremap <silent> <Plug>(coc-explorer-action-v-i) :call coc#rpc#request('doKeymap', ['explorer-action-v-i'])
nnoremap <silent> <Plug>(coc-explorer-action-n-i) :call coc#rpc#request('doKeymap', ['explorer-action-n-i'])
vnoremap <silent> <Plug>(coc-explorer-action-v-gh) :call coc#rpc#request('doKeymap', ['explorer-action-v-gh'])
nnoremap <silent> <Plug>(coc-explorer-action-n-gh) :call coc#rpc#request('doKeymap', ['explorer-action-n-gh'])
vnoremap <silent> <Plug>(coc-explorer-action-v-gl) :call coc#rpc#request('doKeymap', ['explorer-action-v-gl'])
nnoremap <silent> <Plug>(coc-explorer-action-n-gl) :call coc#rpc#request('doKeymap', ['explorer-action-n-gl'])
vnoremap <silent> <Plug>(coc-explorer-action-v-[tab]) :call coc#rpc#request('doKeymap', ['explorer-action-v-[tab]'])
nnoremap <silent> <Plug>(coc-explorer-action-n-[tab]) :call coc#rpc#request('doKeymap', ['explorer-action-n-[tab]'])
vnoremap <silent> <Plug>(coc-explorer-action-v-h) :call coc#rpc#request('doKeymap', ['explorer-action-v-h'])
nnoremap <silent> <Plug>(coc-explorer-action-n-h) :call coc#rpc#request('doKeymap', ['explorer-action-n-h'])
nnoremap <silent> <Plug>(coc-explorer-action-n-j) :call coc#rpc#request('doKeymap', ['explorer-action-n-j'])
nnoremap <silent> <Plug>(coc-explorer-action-n-k) :call coc#rpc#request('doKeymap', ['explorer-action-n-k'])
vnoremap <silent> <Plug>(coc-snippets-select) :call coc#rpc#notify('doKeymap', ['snippets-select'])
xnoremap <silent> <Plug>(coc-convert-snippet) :call coc#rpc#notify('doKeymap', ['convert-snippet'])
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))
nnoremap <silent> <Plug>(startify-open-buffers) :call startify#open_buffers()
onoremap <silent> <Plug>(coc-classobj-a) :call coc#rpc#request('selectSymbolRange', [v:false, '', ['Interface', 'Struct', 'Class']])
onoremap <silent> <Plug>(coc-classobj-i) :call coc#rpc#request('selectSymbolRange', [v:true, '', ['Interface', 'Struct', 'Class']])
vnoremap <silent> <Plug>(coc-classobj-a) :call coc#rpc#request('selectSymbolRange', [v:false, visualmode(), ['Interface', 'Struct', 'Class']])
vnoremap <silent> <Plug>(coc-classobj-i) :call coc#rpc#request('selectSymbolRange', [v:true, visualmode(), ['Interface', 'Struct', 'Class']])
onoremap <silent> <Plug>(coc-funcobj-a) :call coc#rpc#request('selectSymbolRange', [v:false, '', ['Method', 'Function']])
onoremap <silent> <Plug>(coc-funcobj-i) :call coc#rpc#request('selectSymbolRange', [v:true, '', ['Method', 'Function']])
vnoremap <silent> <Plug>(coc-funcobj-a) :call coc#rpc#request('selectSymbolRange', [v:false, visualmode(), ['Method', 'Function']])
vnoremap <silent> <Plug>(coc-funcobj-i) :call coc#rpc#request('selectSymbolRange', [v:true, visualmode(), ['Method', 'Function']])
nnoremap <silent> <Plug>(coc-cursors-position) :call coc#rpc#request('cursorsSelect', [bufnr('%'), 'position', 'n'])
nnoremap <silent> <Plug>(coc-cursors-word) :call coc#rpc#request('cursorsSelect', [bufnr('%'), 'word', 'n'])
vnoremap <silent> <Plug>(coc-cursors-range) :call coc#rpc#request('cursorsSelect', [bufnr('%'), 'range', visualmode()])
nnoremap <Plug>(coc-refactor) :call       CocActionAsync('refactor')
nnoremap <Plug>(coc-command-repeat) :call       CocAction('repeatCommand')
nnoremap <Plug>(coc-float-jump) :call       coc#util#float_jump()
nnoremap <Plug>(coc-float-hide) :call       coc#util#float_hide()
nnoremap <Plug>(coc-fix-current) :call       CocActionAsync('doQuickfix')
nnoremap <Plug>(coc-openlink) :call       CocActionAsync('openLink')
nnoremap <Plug>(coc-references) :call       CocActionAsync('jumpReferences')
nnoremap <Plug>(coc-type-definition) :call       CocActionAsync('jumpTypeDefinition')
nnoremap <Plug>(coc-implementation) :call       CocActionAsync('jumpImplementation')
nnoremap <Plug>(coc-declaration) :call       CocActionAsync('jumpDeclaration')
nnoremap <Plug>(coc-definition) :call       CocActionAsync('jumpDefinition')
nnoremap <Plug>(coc-diagnostic-prev-error) :call       CocActionAsync('diagnosticPrevious', 'error')
nnoremap <Plug>(coc-diagnostic-next-error) :call       CocActionAsync('diagnosticNext',     'error')
nnoremap <Plug>(coc-diagnostic-prev) :call       CocActionAsync('diagnosticPrevious')
nnoremap <Plug>(coc-diagnostic-next) :call       CocActionAsync('diagnosticNext')
nnoremap <Plug>(coc-diagnostic-info) :call       CocActionAsync('diagnosticInfo')
nnoremap <Plug>(coc-format) :call       CocActionAsync('format')
nnoremap <Plug>(coc-rename) :call       CocActionAsync('rename')
nnoremap <Plug>(coc-codeaction-line) :call       CocActionAsync('codeAction',         'n')
nnoremap <Plug>(coc-codeaction) :call       CocActionAsync('codeAction',         '')
vnoremap <Plug>(coc-codeaction-selected) :call       CocActionAsync('codeAction',         visualmode())
vnoremap <Plug>(coc-format-selected) :call       CocActionAsync('formatSelected',     visualmode())
nnoremap <Plug>(coc-codelens-action) :call       CocActionAsync('codeLensAction')
nnoremap <Plug>(coc-range-select) :call       CocActionAsync('rangeSelect',     '', v:true)
vnoremap <Plug>(coc-range-select-backward) :call       CocActionAsync('rangeSelect',     visualmode(), v:false)
vnoremap <Plug>(coc-range-select) :call       CocActionAsync('rangeSelect',     visualmode(), v:true)
map <C-E> <End>
map <C-A> <Home>
map <Right> :vertical resize+5
map <Left> :vertical resize-5
map <Down> :res -5
map <Up> :res +5
inoremap  <Home>
inoremap  <End>
imap <NL> <Plug>(coc-snippets-expand-jump)
inoremap <expr>  pumvisible() ? "\" : "\u\"
inoremap " ""i
inoremap ( ()i
inoremap ) =ClosePair(')')
inoremap [ []i
inoremap ] =ClosePair(']')
inoremap { {}O
inoremap } =ClosePair('}')
let &cpo=s:cpo_save
unlet s:cpo_save
set autochdir
set background=dark
set backspace=indent,eol,start
set backupdir=~/.cache/vim/backup//
set directory=~/.cache/vim/swap//
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=cn
set hidden
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set listchars=tab:▸\ ,trail:▫
set mouse=a
set pyxversion=3
set ruler
set runtimepath=~/.config/coc/extensions/node_modules/coc-todolist,~/.vim,~/.vim/plugged/vim-snazzy,~/.vim/plugged/coc.nvim,~/.vim/plugged/vim-snippets,~/.vim/plugged/vim-airline,~/.vim/plugged/vim-airline-themes,~/.vim/plugged/vim-scrollstatus,~/.vim/plugged/vim,~/.vim/plugged/vim-startify,/usr/share/vim/vimfiles,/usr/share/vim/vim82,/usr/share/vim/vimfiles/after,~/.vim/plugged/vim/after,~/.vim/after,~/.config/coc/extensions/node_modules/coc-snippets,~/.config/coc/extensions/node_modules/coc-explorer
set scrolloff=5
set shiftwidth=2
set shortmess=filnxtToOSI
set showtabline=2
set smartcase
set softtabstop=2
set suffixes=.bak,~,.o,.info,.swp,.aux,.bbl,.blg,.brf,.cb,.dvi,.idx,.ilg,.ind,.inx,.jpg,.log,.out,.png,.toc
set tabline=%!airline#extensions#tabline#get()
set tabstop=2
set termguicolors
set undodir=~/.cache/vim/undo//
set updatetime=100
set wildmenu
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
$argadd 1.sh
edit ~/1.sh
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=#%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
set cursorcolumn
setlocal cursorcolumn
set cursorline
setlocal cursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'sh'
setlocal filetype=sh
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
set foldlevel=99
setlocal foldlevel=99
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetShIndent()
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,0=then,0=do,0=else,0=elif,0=fi,0=esac,0=done,0=end,),0=;;,0=;&,0=fin,0=fil,0=fip,0=fir,0=fix
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=syntaxcomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=2
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal spelloptions=
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'sh'
setlocal syntax=sh
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 4 - ((3 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
4
normal! 014|
tabnext 1
badd +0 ~/1.sh
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOSI
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
