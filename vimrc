" Mitch Johnson's .vimrc file.
" http://github.com/mitchj/vim

filetype on
filetype plugin on
filetype indent on
syntax on

" Set stuff
set autowrite
set timeoutlen=500
set nocompatible " Vi sucks!
set number " Show line numbers
set tabstop=3
set shiftwidth=3
set guifont=Menlo:h11
set smartindent
set autoindent
set go-=T
set wildmode=list:longest
:set foldenable

" colorscheme chance-of-storm " http://www.vim.org/scripts/script.php?script_id=3347
let moria_style="dark" " just google 'moria'
colorscheme moria

" opens in Safari and Firefox
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
