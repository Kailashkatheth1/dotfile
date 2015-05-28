" H. johnny 2010/04/07
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Get out of VI's compatible mode. Use Vim defaults instead of 100% vi compatibility
set nocompatible

" More powerful backspacing
set backspace=indent,eol,start

" Keep 400 lines of command line history
set history=400

" Enable filetype plugin
filetype plugin indent on

" Set to auto read when a file is changed from the outside
if exists("&autoread")
    set autoread
endif

" Set mapleader
let mapleader = ","

" Search tags
set tags=tags;/

" Show the command set, display incomplete commands
set showcmd

" Enable virtual edit
"set virtualedit=all

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings etc.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fast saving
nmap <leader>w :w<CR>
" Fast saving all
nmap <leader>wa :wall<CR>

" Fast quit
nmap <leader>q :q<CR>
" Fast quit all
nmap <leader>qa :qall<CR>

" Smart way to move btw. window
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Moving fast to front, back and 2 sides ;)
imap <m-$> <esc>$a
imap <m-0> <esc>0i
imap <D-$> <esc>$a
imap <D-0> <esc>0i

nnoremap <silent> <F5> :TlistToggle<CR>
let Tlist_Use_SingleClick=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

"nnoremap <silent> <F2> :wincmd p<CR>

" allow the . to execute once for each line of a visual selection
vnoremap . :normal .<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Font
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set colors
" Support 256 colors
set t_Co=256

" Use wombat256 colorscheme
colorscheme wombat256

" Will keep your current color settings for after syntax
syntax enable

" Display the line of cursor position
map <F3> :set cursorline!<CR><Bar>:echo "Highlight active cursor line: " .strpart("OffOn", 3 * &cursorline, 3)<CR>
"set cursorline
"set cursorcolumn
"highlight Cursorline ctermfg=none ctermbg=green cterm=none
"highlight CursorLine cterm=none ctermbg=2 ctermfg=1
"hi CursorLine term=bold cterm=bold 

" Display all colors
":highlight

" /usr/share/vim/vim63/colors/desert.vim
"hi Search term=reverse ctermbg=4 ctermfg=7
"hi Normal ctermbg=black ctermfg=white
"hi Folded ctermbg=black ctermfg=darkcyan
"hi Comment ctermbg=black ctermfg=darkcyan
"hi Comment ctermfg=Blue
"hi Comment guifg=#80a0ff

" Hacking color
"hi Comment      term=bold ctermfg=darkcyan
"hi Constant     term=underline ctermfg=Red
"hi Special      term=bold ctermfg=Magenta
"hi Identifier   term=underline ctermfg=cyan
"hi Statement    term=bold ctermfg=Brown
"hi PreProc      term=bold ctermfg=DarkYellow
"hi Type         term=bold ctermfg=DarkGreen
"hi Ignore       ctermfg=white
"hi Error        term=reverse ctermbg=Red ctermfg=White
"hi Todo         term=standout ctermbg=Yellow ctermfg=Red
hi Search       term=standout ctermbg=Yellow ctermfg=Black
"hi ErrorMsg     term=reverse ctermbg=Red ctermfg=White
"hi StatusLine   ctermfg=darkblue  ctermbg=gray
"hi StatusLineNC ctermfg=brown   ctermbg=darkblue

"hi StatusLine    cterm=bold ctermbg=blue ctermfg=white guibg=gold guifg=blue
"hi StatusLineNC    cterm=bold ctermbg=blue ctermfg=black guibg=gold guifg=blue
"hi CursorLine cterm=bold ctermbg=darkgray guibg=gold guifg=blue

"hi diffAdded ctermfg=Yellow ctermbg=DarkGray guifg=Yellow
"hi diffRemoved ctermfg=Green ctermbg=DarkGray guifg=Green

" {{{ UTF-8 Big5 Setting
"set fileencodings=big5,utf-8
"set termencoding=utf-8
"set enc=utf-8
"set tenc=utf8
" }}}

" vimdiff color
hi DiffAdd ctermfg=LightGray ctermbg=DarkBlue
hi DiffDelete ctermfg=Grey ctermbg=DarkRed
hi DiffChange ctermfg=NONE ctermbg=NONE
hi DiffText ctermfg=LightBlue ctermbg=LightGray cterm=underline

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Statusline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" List status bar in below
set ls=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM userinterface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Show line number
set number

" Highlight search thing
set hlsearch

" Ignore case for serach
set ignorecase

" When 'ignorecase' and 'smartcase' are both on, if a pattern contains an
" uppercase letter, it is case sensitive, otherwise, it is not. 
set smartcase

" Do incremental searching
set incsearch

" Set working directory is always the same as the file is being editing
set autochdir

" Show the window
set laststatus=2

" Always show current position
set ruler 

" Enable use backspace and delete in insert mode
set bs=2

" List all files when use :sp command
set wildmenu

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text option
" When using soft tabs (spaces) then we should set expandtab, shiftwidth,
" softtabstop. Tabstop should be kept at 8.
" When using hard tabs (^T) then we set tabstop and shiftwidth
" ---------------------------------------------------------------------------
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use four space as to TAB
"set expandtab
"set shiftwidth=4
"set softtabstop=4
"set tabstop=4
set expandtab " use spaces, not tabs
set shiftwidth=4 " indents of 4, e.g. < commands use this
set softtabstop=4 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Indent
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent
set cindent
set smartindent

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files and backup
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set backup file directory
"set backupdir=~/vi_backup/
"set backup

" Turn backup off
set nobackup
set nowb
"set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Folding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fold code
"set foldmethod=marker
"set foldmethod=syntax
"set foldnestmax=3
"set foldcolumn=2

"Enable folding, I find it very useful
if exists("&foldenable")
set fen
endif

if exists("&foldlevel")
set fdl=0
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => C/C++ enhanced highlight
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" enable the highlighting of class scope
let g:cpp_class_scope_highlight=1

" Enable highlighting of template functions
let g:cpp_experimental_template_highlight=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Find tags file up the tree from any point
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"function! SetTags()
"    let curdir = getcwd()
"
"    while !filereadable("tags") && getcwd() != "/"
"        cd ..
"    endwhile
"
"    if filereadable("tags")
"        execute "set tags=" . getcwd() . "/tags"
"    endif
"
"    execute "cd " . curdir
"endfunction
"
"call SetTags()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim edit
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" For edit .vimrc in a buff
function! SwitchToBuf(filename)
    "let fullfn = substitute(a:filename, "^\\~/", $HOME . "/", "")
    " find in current tab
    let bufwinnr = bufwinnr(a:filename)
    if bufwinnr != -1
        exec bufwinnr . "wincmd w"
        return
    else
        " find in each tab
        tabfirst
        let tab = 1
        while tab <= tabpagenr("$")
            let bufwinnr = bufwinnr(a:filename)
            if bufwinnr != -1
                exec "normal " . tab . "gt"
                exec bufwinnr . "wincmd w"
                return
            endif
            tabnext
            let tab = tab + 1
        endwhile
        " not exist, new tab
        exec "tabnew " . a:filename
    endif
endfunction

"Fast reloading of the .vimrc
map <silent> <leader>ss :source ~/.vimrc<CR>
"Fast editing of .vimrc
map <silent> <leader>ee :call SwitchToBuf("~/.vimrc")<CR>
"When .vimrc is edited, reload it
autocmd! bufwritepost .vimrc source ~/.vimrc

" Update the function in the taglist, speed up the update time 50ms ?
set updatetime=50

"Fast loading tags file
"map <silent> <leader>tt :call SetTags()<CR>

"imap <C-n> <Esc>:w<CR><Esc>
"nnoremap <silent> <F9> :set paste<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIMgrep setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Do not use following comment map for vimgrep, because it cannot search properly in some case
" Use vimgrep for word under current cursor to search folder and list in Quickfix window
"map <leader>lv :execute "noautocmd vimgrep /" . expand("<cword>") . "/gj **/*." .  expand("%:e") <Bar> cw<CR>
"map <F9> :execute "noautocmd vimgrep /" . expand("<cword>") . "/gj **/*." .  expand("%:e") <Bar> cw<CR>
" Use vimgrep exact word match for word under current cursor to search folder and list in Quickfix window
"map <leader>lve :execute "noautocmd vimgrep /\\<" . expand("<cword>") . "\\>/gj **/*." .  expand("%:e") <Bar> cw<CR>
"map <F10> :execute "noautocmd vimgrep /\\<" . expand("<cword>") . "\\>/gj **/*." .  expand("%:e") <Bar> cw<CR>
noremap <F9> :vimgrep /<C-R>=expand("<cword>")<CR>/gj **/* <CR> \| :copen<CR>
map <F10> :ccl<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tab setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Max tab pages
set tabpagemax=30

" New tab
nmap <C-c> :tabnew<CR>
imap <C-c> <ESC>:tabnew<CR>
" Exit tab
map <C-e> :tabedit 
" Close tab
nmap <C-x> :tabclose<CR>
" Tab switch
map <C-n> :tabnext<CR>
map <C-p> :tabprevious<CR>

map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <C-y> :sp <CR>:exec("tag ".expand("<cword>"))<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => winManager setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:winManagerWindowLayout = "BufExplorer,FileExplorer|TagList"
let g:winManagerWindowLayout = "FileExplorer|TagList"
let g:winManagerWidth = 30
let g:defaultExplorer = 0
nmap <C-W><C-F> :FirstExplorerWindow<CR>
nmap <C-W><C-B> :BottomExplorerWindow<CR>
"nmap <silent> <leader>wm :WMToggle<CR>
nmap <silent> <F6> :WMToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Source Explorer Plugin Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" The switch of the Source Explorer
"nmap <silent> <F4> :SrcExplToggle<CR>
" Set the height of Source Explorer window
"let g:SrcExpl_winHeight = 16
" Set 10 ms for refreshing the Source Explorer
"let g:SrcExpl_refreshTime = 10

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General Autocommand
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Switch to current dir
map <leader>cd :cd %:p:h<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => IBM only setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntax highlighting for Errorlogs
"autocmd BufNewFile,BufRead Errorlogs set syn=fsperrorlogs
" Syntax highlighting for FSP traces
"autocmd BufNewFile,BufRead trac* set syn=fsptraces

" Macros and shortcuts for ODE sandbox 
" Set the tags/path variable correctly in an ODE env
"function! SetupOde()
"    if $BACKED_SANDBOXDIR != ""
"        let tmp=&tags
"        let &tags=substitute($BACKED_SANDBOXDIR,":","/tags,","g") . "/tags"
"        if tmp != ""
"            let &tags="tags," . &tags . "," . tmp
"    endif

" ODE sandbox diff commands
"        nmap  \sd :call DiffBackingTreeFile()<cr>
"        nmap  \sb :call DiffSbxFile()<CR>
"        nmap  \so :call OpenBackingTreeFile()<cr>
"        nmap  \ss :call DiffSbxFile()<cr>
"        nmap  \sc :call DiffCurrFile()<Cr>
"    endif
"endfunction
":call SetupOde()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => MISC
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Go to the last position
if has("autocmd")
    autocmd BufRead *.txt set tw=78
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal g'\"" |
    \ endif
endif

" Insert Time string
"nmap <F12> a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc> 
nmap <F12> a<C-R>=strftime("%m/%d/%Y")<CR> jhung3<Esc> 
"imap <F12> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR> 

" Insert start/end comment string
nmap <leader>js i<C-R>\/* jhung3 start */<CR><Esc>
nmap <leader>je i<C-R>\/* jhung3 end */<CR><Esc>

"Remove the Windows ^M
noremap <Leader>m :%s/r//g<CR>

"Remove indenting on empty line
"map <F2> :%s/\s*$//g<CR>:noh<CR>''

"Super paste
"ino <C-v> <esc>:set paste<CR>mui<C-R>+<esc>mv'uV'v=:set nopaste<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Conque Setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable the fast mode
"let g:ConqueTerm_FastMode = 0

" For Conque buffer using the <C-w> commands while you're still in insert mode
"let g:ConqueTerm_CWInsert = 1

" Don't send these key events to the terminal for Conque hot-key
"let g:ConqueTerm_SendFunctionKeys = 1

" Disable F8, F9, F10, F11
"let g:ConqueTerm_ExecFileKey = 0
"let g:ConqueTerm_SendFileKey = 0
"let g:ConqueTerm_SendVisKey = 0
"let g:ConqueTerm_ToggleKey = 0

"nnoremap <silent> <F7> :ConqueTermSplit bash<CR>
"nnoremap <silent> <F8> :ConqueTermVSplit bash <CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Perl Programming setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType perl set showmatch
autocmd FileType perl set autoindent|set smartindent
let perl_include_pod = 1
let perl_extended_vars = 1
"let perl_fold = 1
"let perl_fold_blocks = 1
