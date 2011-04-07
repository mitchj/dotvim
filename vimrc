" ------------------------------------------------------
"  Files and syntax
" ------------------------------------------------------
filetype on
filetype plugin on
filetype indent on
syntax on

" ------------------------------------------------------
"  Tabs, spaces, indentation
" ------------------------------------------------------
set tabstop=3 " Number of spaces to use for tabs
set shiftwidth=3 " Number of spaces to autoindent
set smartindent
set autoindent
set foldenable

" ------------------------------------------------------
"	Various configurations
" ------------------------------------------------------
set autowrite
set timeoutlen=500
set nocompatible " Use Vim instead of Vi
set wildmode=list:longest
au FocusLost * :wa " Save file when window loses focus
abbrev ss :! open -a safari.app %:p<cr>
abbrev ff :! open -a firefox.app%:p<cr>
abbrev gg :! open -a google chrome.app%:p<cr>
let NERDTreeShowHidden=1 " Don't show hidden files

" ------------------------------------------------------
"	UI  
" ------------------------------------------------------
set number " Show line numbers
set guifont=Menlo:h12 " Font-family: Menlo, Font-size: 12
set go-=T " Hide MacVim toolbar by default
set ruler
colorscheme solarized
"colorscheme ir_black MacVim theme

" ------------------------------------------------------
"	Remapping  
" ------------------------------------------------------
nmap ,ev :tabedit $MYVIMRC<cr>
nmap <space> :
nmap ,nt :NERDTree<cr>
nmap ,b :buffer<cr>
nmap ,w3 :W3cValidate<cr>
nnoremap <leader>q gqip
imap jj <esc>

" ------------------------------------------------------
"	Source .vimrc file 
" ------------------------------------------------------
if has("autocmd")
	autocmd bufwritepost .vimrc source $MYVIMRC
endif

" ------------------------------------------------------
"	More Syntax	
" ------------------------------------------------------
au BufRead,BufNewFile *.tumblr.html set filetype=tumblr " Inky's tumblr syntax
au BufRead,BufNewFile *less set filetype=less " less css
au BufRead,BufNewFile *.css set ft=css syntax=css3 " css3 syntax
