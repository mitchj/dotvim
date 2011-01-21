" Mitch Johnson's .vimrc file.
" http://github.com/mitchj/dotvim

filetype on
filetype plugin on
filetype indent on
syntax on

" Display current cursor position
set ruler

" Set stuff
set autowrite
set timeoutlen=500
set nocompatible " Vi sucks!
set number " Show line numbers
set tabstop=3
set shiftwidth=3
set guifont=Menlo:h12
set smartindent
set autoindent
set go-=T
set wildmode=list:longest
:set foldenable

colorscheme neverland

" opens file in Safari and Firefox
abbrev ss :! open -a safari.app %:p<cr>
abbrev ff :! open -a firefox.app%:p<cr>

" Insert mode maps
imap jj <esc>

" Normal mode maps
nmap ,ev :tabedit $MYVIMRC<cr>
nmap <space> :
nmap ,nt :NERDTree<cr>
nmap ,b :buffer

" Selects recently pasted text
nnoremap <leader>v V']

" :q > gqip
nnoremap <leader>q gqip

" Source .vimrc file (so I don't have to restart vim after saving)
if has("autocmd")
	autocmd bufwritepost .vimrc source $MYVIMRC
endif

" Nerd tree
let NERDTreeShowHidden=1

" Save when losing focus
au FocusLost * :wa

" Screw the help key!
set fuoptions=maxvert,maxhorz
inoremap <F1> <ESC> :set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" The manual key sucks, too!
nnoremap K <nop>

" Syntax
au BufRead,BufNewFile *.tumblr.html set filetype=tumblr " Inky's tumblr syntax
au BufRead,BufNewFile *less set filetype=less " less css
