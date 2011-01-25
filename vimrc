" Mitch Johnson's .vimrc file.
" http://github.com/mitchj/dotvim

" Obviously, anyone is allowed to copy and use anything that's in my .vimrc
" file!

" If you'd like to add stuff to improve my .vimrc file, please fork this on
" GitHub, add your changes, and then submit a push request!

" Filetype
filetype on
filetype plugin on
filetype indent on
syntax on

" Tabs, spaces indentation
set tabstop=3 " Number of spaces to use for tabs
set shiftwidth=3 " Number of spaces to autoindent
set smartindent
set autoindent
set foldenable

" Various configurations
set autowrite
set timeoutlen=500
set nocompatible " Use Vim instead of Vi
set wildmode=list:longest

" Appearance configurations
set number " Show line numbers
set guifont=Menlo:h12 " Font-family: Menlo, Font-size: 12
set go-=T " Hide MacVim toolbar by default
set ruler
colorscheme neverland " MacVim theme

" opens file in Safari and Firefox
abbrev ss :! open -a safari.app %:p<cr>
abbrev ff :! open -a firefox.app%:p<cr>

" Normal mode maps
nmap ,ev :tabedit $MYVIMRC<cr>
nmap <space> :
nmap ,nt :NERDTree<cr>
nmap ,b :buffer
nnoremap <leader>q gqip

" Insert mode maps
imap jj <esc>

" Source .vimrc file (so I don't have to restart vim after saving)
if has("autocmd")
	autocmd bufwritepost .vimrc source $MYVIMRC
endif

" Nerd tree
let NERDTreeShowHidden=0

" Save when losing focus
au FocusLost * :wa

" Syntax
au BufRead,BufNewFile *.tumblr.html set filetype=tumblr " Inky's tumblr syntax
au BufRead,BufNewFile *less set filetype=less " less css
