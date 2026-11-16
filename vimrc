"===================================================================================================
"    Windows  C:\Program Files (x86)\Vim\.vimrc
"    Linux    /etc/vimrc
"    FreeBSD  /usr/local/etc/vim/vimrc
"===================================================================================================

"===================================================================================================
"    VIM
"===================================================================================================

let g:skip_defaults_vim=1

syntax on
set magic
set number
set nowrap
set showcmd
set bg=light
set t_Co=256
set wildmenu
set autochdir
set scrolloff=5
set laststatus=2
set nocompatible
set showtabline=1
set nostartofline
set ambiwidth=double
set visualbell t_vb=
set virtualedit=block
set hlsearch incsearch
filetype plugin indent on
set ttimeout ttimeoutlen=100
set nrformats=octal,hex,alpha
set backspace=indent,eol,start
set whichwrap=b,s,h,l,<,>,[,],~
set history=1000 undolevels=1000
set fileformat=unix fileformats=unix,dos
set showmatch matchpairs=(:),[:],{:},<:>
set nolist listchars=tab:--,trail:-,nbsp:*
set nofoldenable foldmethod=indent foldtext=
set complete=.,w,b,u,t,i,d completeopt=longest,menu
set encoding=utf-8 termencoding=utf-8 fileencoding=utf-8
set nowritebackup noswapfile autoread writeany nolazyredraw
set tabstop=4 shiftwidth=4 softtabstop=4 smarttab expandtab
set guifont=Consolas:h11:cANSI guifontwide=NSimSun:h11:cANSI
set fileencodings=ucs-bom,utf-8,chinese,gb18030,big5,euc-jp,euc-kr,latin1
set autoindent smartindent copyindent cindent cinoptions=:0,g0,t0,i0,N-s,E-s,(s,W4,m1,j1
"===================================================================================================
"    GVIM
"===================================================================================================
if (has("gui_running"))
    set lines=60
    set columns=130
    set guioptions=
    set clipboard+=unnamed
    set guitablabel=%t\ %M
    language messages en
    winpos 1200 240
    autocmd GUIEnter * set visualbell t_vb=
    autocmd BufRead,TabEnter * let &titlestring=expand("%:p")
    if (has("win32"))
        source $VIMRUNTIME/delmenu.vim
        source $VIMRUNTIME/menu.vim
    endif
    if argc() == 1
        silent execute '!start gvim --servername vimer --remote-tab-silent "'.argv(0).'"'
        call remote_foreground("vimer")
        silent execute "q"
    endif
else
    autocmd BufRead,TabEnter * set mouse=
endif

"===================================================================================================
"    ColorScheme
"===================================================================================================
highlight Normal       guifg=#ffffff guibg=#272822 gui=NONE ctermfg=231 ctermbg=235 cterm=NONE
highlight LineNr       guifg=#9f9f9f guibg=#272822 gui=NONE ctermfg=247 ctermbg=235 cterm=NONE
highlight Cursor       guifg=#ff0000 guibg=#00ee00 gui=NONE ctermfg=196 ctermbg=46  cterm=NONE
highlight MatchParen   guifg=#ffffff guibg=grey30  gui=NONE ctermfg=231 ctermbg=239 cterm=NONE
highlight Visual       guifg=#9f9f9f guibg=#383838 gui=NONE ctermfg=247 ctermbg=237 cterm=NONE
highlight Pmenu        guifg=grey99  guibg=grey30  gui=NONE ctermfg=231 ctermbg=239 cterm=NONE
highlight PmenuSel     guifg=grey99  guibg=grey45  gui=NONE ctermfg=231 ctermbg=243 cterm=NONE
highlight PmenuThumb   guifg=grey70  guibg=grey50  gui=NONE ctermfg=249 ctermbg=244 cterm=NONE
highlight NonText      guifg=#272822 guibg=#272822 gui=NONE ctermfg=235 ctermbg=235 cterm=NONE
highlight ModeMsg      guifg=#9f9f9f guibg=#272822 gui=NONE ctermfg=247 ctermbg=235 cterm=NONE
highlight ErrorMsg     guifg=#9f9f9f guibg=#272822 gui=NONE ctermfg=247 ctermbg=235 cterm=NONE
highlight WarningMsg   guifg=#9f9f9f guibg=#272822 gui=NONE ctermfg=247 ctermbg=235 cterm=NONE
highlight CursorLineNr guifg=#ffffff guibg=grey40  gui=NONE ctermfg=231 ctermbg=241 cterm=NONE
highlight Search       guifg=#ffffff guibg=#ff6633 gui=NONE ctermfg=231 ctermbg=202 cterm=NONE
highlight IncSearch    guifg=#ffffff guibg=#ff6633 gui=NONE ctermfg=231 ctermbg=202 cterm=NONE
highlight Over         guifg=grey40  guibg=grey30  gui=NONE ctermfg=241 ctermbg=239 cterm=NONE
highlight SpecialKey   guifg=#9acd32 guibg=#272822 gui=NONE ctermfg=112 ctermbg=235 cterm=NONE

highlight VertSplit    guifg=grey40 guibg=#272822 gui=none ctermfg=241 ctermbg=202 cterm=NONE
highlight Folded       guifg=gold   guibg=grey30  gui=none ctermfg=231 ctermbg=202 cterm=NONE
highlight FoldColumn   guifg=tan    guibg=grey30  gui=none ctermfg=231 ctermbg=202 cterm=NONE
highlight ModeMsg      guifg=goldenrod   gui=none ctermfg=231 cterm=NONE
highlight MoreMsg      guifg=SeaGreen    gui=none ctermfg=231 cterm=NONE
highlight Question     guifg=springgreen gui=none ctermfg=231 cterm=NONE
highlight Title        guifg=indianred   gui=none ctermfg=231 cterm=NONE

highlight Comment      guifg=grey40  gui=NONE ctermfg=241 cterm=NONE
highlight Constant     guifg=#ffa0a0 gui=NONE ctermfg=217 cterm=NONE
highlight Identifier   guifg=#5cd9ef gui=NONE ctermfg=45  cterm=NONE
highlight Statement    guifg=#f92672 gui=NONE ctermfg=197 cterm=NONE
highlight PreProc      guifg=#f92672 gui=NONE ctermfg=197 cterm=NONE
highlight Type         guifg=#5cd9ef gui=NONE ctermfg=45  cterm=NONE
highlight Special      guifg=#ffa0a0 gui=NONE ctermfg=217 cterm=NONE
highlight Function     guifg=#a6e22e gui=NONE ctermfg=112 cterm=NONE
highlight Ignore       guifg=grey40  gui=NONE ctermfg=241 cterm=NONE
highlight Todo         guifg=orangered guibg=yellow2 gui=NONE ctermfg=202 ctermbg=226 cterm=NONE

highlight cppStatement guifg=#F92672 gui=NONE
highlight Delimiter    guifg=#F92672 gui=NONE
highlight Exception    guifg=#5cd9ef gui=NONE ctermfg=45  cterm=NONE
highlight Operator     guifg=#5cd9ef gui=NONE ctermfg=45  cterm=NONE
highlight StorageClass guifg=#5cd9ef gui=NONE ctermfg=45  cterm=NONE
highlight Structure    guifg=#5cd9ef gui=NONE ctermfg=45  cterm=NONE
highlight Boolean      guifg=#ae81ff gui=NONE ctermfg=141 cterm=NONE

highlight User1        guifg=grey15  guibg=#00afd7 gui=NONE ctermfg=235 ctermbg=38  cterm=NONE
highlight User2        guifg=grey70  guibg=grey30  gui=NONE ctermfg=249 ctermbg=239 cterm=NONE
highlight User3        guifg=grey60  guibg=grey19  gui=NONE ctermfg=247 ctermbg=236 cterm=NONE
highlight User4        guifg=grey80  guibg=grey40  gui=NONE ctermfg=252 ctermbg=241 cterm=NONE
highlight User5        guifg=grey90  guibg=grey50  gui=NONE ctermfg=254 ctermbg=244 cterm=NONE
highlight User6        guifg=#cc33cc guibg=grey19  gui=NONE ctermfg=164 ctermbg=236 cterm=NONE
highlight User7        guifg=grey15  guibg=#ff33cc gui=NONE ctermfg=235 ctermbg=200 cterm=NONE
highlight User8        guifg=grey15  guibg=#ff6633 gui=NONE ctermfg=235 ctermbg=202 cterm=NONE
highlight User9        guifg=grey15  guibg=#9933cc gui=NONE ctermfg=235 ctermbg=128 cterm=NONE
highlight User10       guifg=grey15  guibg=#9933cc gui=NONE ctermfg=235 ctermbg=128 cterm=NONE
highlight StatusLine   guifg=grey99  guibg=grey19  gui=NONE ctermfg=231 ctermbg=236 cterm=NONE
highlight StatusLineNC guifg=grey98  guibg=grey19  gui=NONE ctermfg=231 ctermbg=236 cterm=NONE

highlight TabLine      guifg=grey70  guibg=grey20  gui=NONE ctermfg=244 ctermbg=236 cterm=NONE
highlight TabLineFill  guifg=grey70  guibg=grey20  gui=NONE ctermfg=244 ctermbg=236 cterm=NONE
highlight TabLineSel   guifg=#ffffff guibg=grey20  gui=NONE ctermfg=231 ctermbg=236 cterm=NONE

"===================================================================================================
"    C++
"===================================================================================================
function CppHighlight()
    syntax keyword cppType std
    syntax keyword cppType array vector deque list forward_list
    syntax keyword cppType set multiset map multimap
    syntax keyword cppType unordered_set unordered_multiset
    syntax keyword cppType unordered_map unordered_multimap
    syntax keyword cppType stack queue priority_queue
    syntax keyword cppType span string wstring string_view wstring_view
    syntax keyword cppType byte tuple pair
    syntax keyword cppType variant optional expected any monostate
    syntax keyword cppType function complex regex
    syntax keyword cppType unique_ptr shared_ptr weak_ptr
    syntax keyword cppType mutex shared_mutex
    syntax keyword cppType thread jthread
    syntax keyword cppType lock_guard scoped_lock unique_lock shared_lock
    syntax keyword cppType condition_variable future shared_future
    syntax keyword cppType promise packaged_task atomic
    syntax keyword cppType random_device mt19937
    syntax keyword cppType path filesystem_error directory_entry
    syntax keyword cppType file_status space_info
    syntax keyword cppType duration time_point
    syntax keyword cppType system_clock steady_clock high_resolution_clock
endfunction

function CppSettings()
    set fileformat=unix
    set fileencoding=utf-8
    call CppHighlight()
endfunction

autocmd BufRead,TabEnter *.h,*.cpp call CppSettings()

"===================================================================================================
"    TabLine
"===================================================================================================
function TabLabel(index)
    let buflist = tabpagebuflist(a:index)
    let winnr   = tabpagewinnr(a:index)
    let name    = fnamemodify(bufname(buflist[winnr-1]), ':t')
    if (name == "")
        let name = "[No Name]"
    endif
    return name
endfunction

function TabLine()
    let line = ''
    for i in range(tabpagenr('$'))
        if i + 1 == tabpagenr()
            let line .= '%#TabLineSel#'
            let line .= ' %'.(i+1).'T%{TabLabel('.(i+1).')} '
        else
            let line .= '%#TabLine#'
            let line .= ' %'.(i+1).'T%{TabLabel('.(i+1).')} '
        endif
        if(!has("gui_running"))
            let line .= ' '
        endif
    endfor
    if(has("gui_running"))
        let line .= '%#TabLineFill#%T%=%#TabLine#%999X'
    else
        let line .= '%#TabLineFill#%T%=%#TabLineFill#%999X'
    endif
    return line
endfunction

set tabline=%!TabLine()

"===================================================================================================
"    StatusLine
"===================================================================================================
function ModeName()
    let i = char2nr(mode())
    let m = '            '
    if (i == 110) | let m = '   Normal   ' | endif
    if (i == 105) | let m = '   Insert   ' | endif
    if (i == 118) | let m = '   Visual   ' | endif
    if (i ==  86) | let m = 'Visual Line ' | endif
    if (i ==  22) | let m = 'Visual Block' | endif
    if (i ==  82) | let m = '   Replace  ' | endif
    return m
endfunction

function ModeColor()
    let i = char2nr(mode())
    let c = '1'
    if (i == 110) | let c = '1' | endif
    if (i == 105) | let c = '7' | endif
    if (i == 118) | let c = '8' | endif
    if (i ==  86) | let c = '8' | endif
    if (i ==  22) | let c = '8' | endif
    if (i ==  82) | let c = '9' | endif
    return c
endfunction

function StatusLine()
    return
    \"%".ModeColor()."*\ %-12.12{ModeName()}\ ".
    \"%3*\ %<%t\ %6*%M".
    \"%3*\ %=\ ".
    \"%3*\ %{&filetype}\ \ ".
    \"%3*\ %{&fileformat}\ ".
    \"%3*\ %{(&fenc!=''?&fenc:&enc)}\ ".
    \"%3*\ %6.6{&bomb?' bomb ':'nobomb'}\ \ ".
    \"%3*\ %5.5l,%-3.3c%3.3p%%\ "
endfunction

set statusline=%!StatusLine()


"===================================================================================================
"    Move
"===================================================================================================
function NMoveUp()
    let line=line(".")
    if (line > 1)
        silent execute "move ".(line-2)
    endif
endfunction

function NMoveDown()
    let line=line(".")
    if (line < line("$"))
        silent execute "move ".(line+1)
    endif
endfunction

function VMoveUp()
    let line=line("'<")
    if (line > 1)
        silent execute "'<,'>move ".(line-2)
        silent execute "normal!gv"
    else
        silent execute "normal!gv"
    endif
endfunction

function VMoveDown()
    let line=line("'>")
    if (line < line("$"))
        silent execute "'<,'>move ".(line+1)
        silent execute "normal!gv"
    else
        silent execute "normal!gv"
    endif
endfunction

vnoremap <silent> <A-Left>  <Esc>:'<,'><<CR>gv
vnoremap <silent> <A-Right> <Esc>:'<,'>><CR>gv
vnoremap <silent> <A-Up>    <Esc>:call VMoveUp()<CR>
vnoremap <silent> <A-Down>  <Esc>:call VMoveDown()<CR>

nnoremap <silent> <A-Left>  <Esc><<
nnoremap <silent> <A-Right> <Esc>>>
nnoremap <silent> <A-Up>    <Esc>:call NMoveUp()<CR>
nnoremap <silent> <A-Down>  <Esc>:call NMoveDown()<CR>

"===================================================================================================
"    F12
"===================================================================================================
function Select(list)
    let size=len(a:list)+1
    silent execute "set cmdheight=".size | redraw
    for i in range(len(a:list))
        if (a:list[i] == "unique")
            let item = a:list[i]
        elseif (a:list[i] == "retab")
            let item = "retab"
        elseif (a:list[i] == "fileformat")
            let item = eval("&".a:list[i])
        elseif (a:list[i] == "fileencoding")
            let item = "utf-8"
        else
            let item = eval("&".a:list[i])
            if (item == "1") | let item = a:list[i] | else | let item = "no".a:list[i] | endif
        endif
        echohl SpecialKey | echon i+1."."
        echohl Type       | echon item
        echohl None       | echo ""
    endfor
    let index = getchar() - 49 | set cmdheight=1
    if(index < 0 || index >= size-1) | return "" | endif
    return a:list[index]
endfunction

function ToggleOptions()
    let options=["fileformat", "fileencoding", "bomb", "paste", "list", "retab", "lazyredraw", "unique"]
    let option=Select(options)
    if (option=="") | return | endif
    if (option=="fileformat")
        if &fileformat == "dos"
            set fileformat=unix
        else
            set fileformat=dos
        endif
        return
    endif
    if (option=="fileencoding")
        set fileencoding=utf-8
        return
    endif
    if (option=="retab")
        let pos=getpos(".")
        if(search("\\s\\+$") > 0)
            silent execute "%s/\\s\\+$//g"
        endif
        if(search("\\(\\s*\\n\\)*\\%$") > 0)
            silent execute "%s/\\(\\s*\\n\\)*\\%$//g"
        endif
        if(search("\r$") > 0)
            silent execute "%s/\r$//g"
        endif
        call setpos(".",pos)
        retab
        return
    endif
    if (option=="unique")
        silent execute "g/^\\(.\\+\\)$\\n\\1/d"
        return
    endif
    silent execute "set ".option."!"
    execute "set ".option."?"
endfunction

nnoremap <silent> <F12> <Esc>:call ToggleOptions()<CR>

"===================================================================================================
"    Map
"===================================================================================================
vnoremap <silent> p               pgvygv<Esc>
nnoremap <silent> n               nzz<Esc>
nnoremap <silent> N               Nzz<Esc>
nnoremap <silent> <F1>            <Esc>:tab help<CR>
nnoremap <silent> <F5>            <Esc>:e<CR>ggG
nnoremap <silent> <F11>           <Esc>:%!xxd<CR>
nnoremap <silent> <Tab>           <C-o>
nnoremap <silent> <S-Tab>         <C-i>
nnoremap <silent> <Space>         <Nop>
nnoremap <silent> <CR>            <Nop>
nnoremap <silent> <MiddleMouse>   <Nop>
nnoremap <silent> <2-MiddleMouse> <Nop>
nnoremap <silent> <3-MiddleMouse> <Nop>
nnoremap <silent> <4-MiddleMouse> <Nop>
inoremap <silent> <MiddleMouse>   <Nop>
inoremap <silent> <2-MiddleMouse> <Nop>
inoremap <silent> <3-MiddleMouse> <Nop>
inoremap <silent> <4-MiddleMouse> <Nop>

augroup StartupRedraw
    autocmd!
    if v:version >= 800
        autocmd VimEnter * call timer_start(0, {timer -> execute('redraw!')})
    endif
augroup END
