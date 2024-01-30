let mapleader = " "

set number relativenumber
set idearefactormode=keep
set ideajoin
set ignorecase
set incsearch
set multiple-cursors
set commentary
set surround

" ---- [ Plugins ] ----
Plug 'machakann/vim-highlightedyank'
Plug 'preservim/nerdtree'

" Vertical movement
vnoremap j gj
vnoremap k gk
nnoremap j gj
nnoremap k gk

" Miscellaneous
vnoremap <Leader>p "_dP
nnoremap <silent> <Leader>b :action ToggleLineBreakpoint<CR>
vnoremap <silent> <Leader>s :action SurroundWith<CR>
map <silent> <Leader>r :action RenameElement<CR>
map <Leader>g :action Generate<CR>

" Indentation
nnoremap <silent> > >>
xnoremap <silent> > >gv
nnoremap <silent> < <<
xnoremap <silent> < <gv

" Navigate through tabs
map <Tab> :tabnext<CR>
map <S-tab> :tabprev<CR>
map <C-w> :action CloseEditor<CR>
map <C-B> <C-O>

" Undo Git commit
map <Leader>z :action Vcs.RollbackChangedLines<CR>

" Paste code
inoremap <C-v> <C-r>+
nnoremap <C-v> "+p
xnoremap <C-v> "+p

" Copy in visual mode
vmap <C-c> "+y

" Navigate editor
map <Leader>d :action Debug<CR>
map <Leader>t :NERDTreeToggle<CR>:Action EditorEscape<CR>
map <Leader>m :action GotoNextError<CR>
map <Leader>q :action CloseProject<CR>
map <C-h> :NERDTree<CR>

" Hover
map gh <Action>(ShowHoverInfo)

" Shortcuts
sethandler <S-Tab> a:vim
sethandler <C-C> a:vim
sethandler <C-D> a:vim
sethandler <C-E> a:vim
sethandler <C-F> a:ide
sethandler <C-J> a:vim
sethandler <C-L> a:vim
sethandler <C-O> a:ide
sethandler <C-P> a:ide
sethandler <C-R> a:vim
sethandler <C-T> a:vim
sethandler <C-U> a:vim
sethandler <C-V> a:vim
sethandler <C-W> a:vim
sethandler <C-B> a:vim
