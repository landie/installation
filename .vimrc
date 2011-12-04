    set nocompatible
    set t_Co=256
    colorscheme xoria256

    runtime! autoload/pathogen.vim
    silent! call pathogen#helptags()
    silent! call pathogen#runtime_append_all_bundles()

    filetype plugin indent on
    syntax on

    if has('statusline')
        set laststatus=2

        " Broken down into easily includeable segments
        set statusline=%<%f\                        " Filename
        set statusline+=%w%h%m%r                    " Options
        set statusline+=\ [%{&ff}/%Y]               " filetype
        set statusline+=\ [%{getcwd()}]             " current dir
        set statusline+=%=%-14.(%l,%c%V%)\ %p%%     " Right aligned file nav info
    endif

    set history=1000                    " set history to 1000, default 20
    set spell                           " enable spellcheck
    set spelllang=en                     " set spellcheck language to english
    set spellsuggest=9                  " show only 9 suggestions for misspelled words
    set textwidth=72

    set tabpagemax=15
    set showmode

    set cursorline



    set backspace=indent,eol,start      " backspace for dummys
    set linespace=0                     " No extra spaces between rows
    set nu                              " Line numbers on
    set showmatch                       " show matching brackets/parenthesis
    set incsearch                       " find as you type search
    set hlsearch                        " highlight search terms
    set winminheight=0                  " windows can be 0 line high 
    set ignorecase                      " case insensitive search
    set smartcase                       " case sensitive when uc present
    set wildmenu                        " show list instead of just completing
    set wildmode=list:longest,full      " command <Tab> completion, list matches, then longest common part, then all.
    set whichwrap=b,s,h,l,<,>,[,]       " backspace and cursor keys wrap to
    set scrolljump=5                    " lines to scroll when cursor leaves screen
    set scrolloff=3                     " minimum lines to keep above and below cursor
    set foldenable                      " auto fold code
    set gdefault                        " the /g flag on :s substitutions by default
   
    set nowrap                          " wrap long lines
    set autoindent                      " indent at the same level of the previous line
    set shiftwidth=4                    " use indents of 4 spaces
    set expandtab                       " tabs are spaces, not tabs
    set tabstop=4                       " an indentation every four columns
    set softtabstop=4                   " let backspace delete indent
    set pastetoggle=<F12>

    autocmd FileType c,cpp,java,php,js,python,twig,xml,yml autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))
    
    map <C-e> :NERDTreeToggle<CR>

    " Stupid shift key fixes
    cmap W w                        
    cmap WQ wq
    cmap wQ wq
    cmap Q q
    cmap Tabe tabe
