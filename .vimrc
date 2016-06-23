"NeoBundle Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=/Users/mituba/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('/Users/mituba/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Shougo/neocomplcache'
" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }
NeoBundle 'tyru/caw.vim'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------
autocmd ColorScheme * highlight Visual ctermbg=75
"NeoBundle Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
  endif
  autocmd BufWritePre * :%s/\s\+$//ge
  filetype indent plugin on
  set hidden
  set wildmenu
  set showcmd
  set hlsearch
  set ignorecase
  """"""""""""""""""""""""""""""
""""""""""""""""""""""""""""""
" 自動的に閉じ括弧を入力
""""""""""""""""""""""""""""""
  set smartcase
  set backspace=indent,eol,start
  set nostartofline
  set ruler
  set laststatus=2
  set confirm
  set visualbell
  set t_vb=
  set cmdheight=2
  noremap <Up> <Nop>
  noremap <Down> <Nop>
  noremap <Left> <Nop>
  noremap <Right> <Nop>
  inoremap <Up> <Nop>
  inoremap <Down> <Nop>
  inoremap <Left> <Nop>
  inoremap <Right> <Nop>
  nnoremap <C-t> :NERDTreeToggle<CR>
  nnoremap <C-e> :sh<Enter>
  inoremap <C-w> <Esc>:w<Enter>
  set whichwrap=b,s,<,>,[,],h,l
  nmap <Leader>c <Plug>(caw:i:toggle)
  vmap <Leader>c <Plug>(caw:i:toggle)

  " 挿入モードでのカーソル移動
  inoremap <C-j> <Down>
  inoremap <C-k> <Up>
  inoremap <C-h> <Left>
  inoremap <C-l> <Right>
  nnoremap <C-w> :w<Enter>
  " Required:
  set encoding=utf-8
  set fileencoding=utf-8
  set fileencodings=utf-8,cp932
  set wrap
  set autoindent
  set ttymouse=xterm2
  set number
  set runtimepath^=/Users/mituba/.vim/bundle/neobundle.vim/
  set sm
  set ai
  syntax on

"
"
"  " If there are uninstalled bundles found on startup,
"  " this will conveniently prompt you to install them.
  syntax on
  colorscheme molokai
  set t_Co=256
  let g:indent_guides_auto_colors=0
  autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd   ctermbg=247
  autocmd VimEnter,Colorscheme * :hi IndentGuidesEven  ctermbg=246
  let g:indent_guides_enable_on_vim_startup=1
  let g:indent_guides_guide_size=1
  set tabstop=4
  set shiftwidth=4
  set expandtab
"nnoremap    [Tag]   <Nop>
"nmap    t [Tag]
nnoremap <tab> gt

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : ''
    \ }

" Plugin key-mappings.

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplcache#smart_close_popup() . "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
imap { {}<C-h>
imap [ []<C-h>
imap ( ()<C-h>
