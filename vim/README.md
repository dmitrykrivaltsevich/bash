# Installation

 ```
 $ xcode-select --install # install dev tools
 $ brew upgrade python # fixes problem with missed python header
 $ brew install vim --with-override-system-vi --with-cscope --with-luajit --HEAD # vim with Lua support for autocomplete
 $ brew install ctags # for navigation to definition (ctrl+]) and back (ctrl+t)
 $ hash -r # for  the changes to take effect and you're sorted out
 
 # plugin manager for vim (all plugins can be stored separately in ~/.vim/bundle/
 $ mkdir -p ~/.vim/autoload ~/.vim/bundle && \
   curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
 
 # install vim plugins
 $ git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree/                    # file tree panel
 $ git clone https://github.com/Xuyuanp/nerdtree-git-plugin.git ~/.vim/bundle/nerdtree-git-plugin/ # git status file status in tree panel
 $ git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline/                 # nice status bar
 $ git clone https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim/                    # search via Ctrl+P
 $ git clone https://github.com/airblade/vim-gitgutter.git ~/.vim/bundle/vim-gitgutter/            # shows add / mod / del lines
 $ git clone https://github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive/                 # current branch in a status bar
 $ git clone https://github.com/derekwyatt/vim-scala.git ~/.vim/bundle/vim-scala/                  # scala syntax highlighting
 $ git clone https://github.com/Shougo/neocomplete.vim.git ~/.vim/bundle/neocomplete.vim/          # autocomplete
 
 # in each project generate ctags
 $ ctags -R . --exclude=target --exclude=vendor
 ```
