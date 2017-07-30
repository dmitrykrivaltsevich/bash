" show line numbers
set number

" show file encoding
set laststatus=2 statusline=%f\ %m\ %{&fileencoding?&fileencoding:&encoding}

" plugin manager
execute pathogen#infect()
syntax on
filetype plugin indent on

" configuration for NERDTree plugin
autocmd VimEnter * NERDTree | wincmd p " open file tree on startup and jump cursor to file (switch window: ctrl+w+arrow)
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " exit vim if only NERDTree is open
let g:NERDTreeWinPos = "right" " positon of the NERDTree
" F3 toggle NERDTree, F4 highlights current file in NERDTree
map <F3> :NERDTreeToggle<CR>
silent! map <F4> :NERDTreeFind<CR>
let g:NERDTreeMapActivateNode="<F4>"
let NERDTreeShowHidden=1 " show hidden files
:let g:NERDTreeWinSize=50 " change width

" ctrlpvim plugin (search)
set wildignore+=*/target/* " exclude 'target' folder form index

" vim-gutgutter plugin - changed / updated / deleted lines
set updatetime=250 " frequence for window update in ms

" nocomplete.vim
let g:neocomplete#enable_at_startup = 1 " enabled autocomplete on start
let g:neocomplete#enable_smart_case = 1 " enable smartcase
" <TAB> completion
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
