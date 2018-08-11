set wildmode=longest,list,full
set wildmenu

set background=dark

set nocompatible

execute pathogen#infect()
filetype plugin indent on

syntax on
set expandtab
"set smartindent
set autoindent
set cindent
set tabstop=4
set shiftwidth=4
"set softtabstop=4

" set cursorcolumn
set cursorline
set number
set incsearch
set ignorecase
set hlsearch

"set path=.,/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.9.sdk/usr/include/,,
set tags=.tags,tags

if has("cscope")
    set csto=0
    set cst
    set nocsverb
    if filereadable("cscope.out")
        cs add cscope.out
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif
    set csverb
endif

"set runtimepath^=~/.vim/bundle/node
au Filetype html,xml,xsl source ~/.vim/plugins/closetag.vim

map <C-n> :NERDTreeToggle<CR>
" enable line numbers
let NERDTreeShowLineNumbers=1

set laststatus=2

let g:rustfmt_autosave=1
