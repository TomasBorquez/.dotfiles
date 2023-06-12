set ignorecase

" Vertical movement
vnoremap j gj
vnoremap k gk
nnoremap j gj
nnoremap k gk

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Navigate editor
nnoremap <silent> <Space>t <Cmd>call VSCodeNotify('workbench.action.toggleSidebarVisibility')<CR>
nnoremap <silent> <Space>f <Cmd>call VSCodeNotify('workbench.action.findInFiles')<CR>
nnoremap <silent> <Space>b <Cmd>call VSCodeNotify('breadcrumbs.focusAndSelect')<CR>
nnoremap <silent> <Space>e <Cmd>call VSCodeNotify('workbench.explorer.fileView.focus')<CR>
nnoremap <silent> <Space>m <Cmd>call VSCodeNotify('editor.action.marker.nextInFiles')<CR>
nnoremap <silent> <Space>g <Cmd>call VSCodeNotify('workbench.view.scm')<CR>
nnoremap <silent> <Space>s <Cmd>call VSCodeNotify('workbench.action.splitEditor')<CR>

" Miscellaneous
nnoremap <silent> <Space>n :nohl<CR>
vnoremap <Space>p "_dP
nnoremap <silent> <Space>r <Cmd>call VSCodeNotify('editor.action.rename')<CR>
nnoremap <silent> gD <Cmd>call VSCodeNotify('editor.action.revealDefinitionAside')<CR>
inoremap <C-g> <C-o>
nnoremap Q <nop>

" Indentation
nnoremap <silent> > >>
xnoremap <silent> > >gv
nnoremap <silent> < <<
xnoremap <silent> < <gv

" Navigate through tabs
nnoremap <silent> tab <Cmd>call VSCodeNotify('workbench.action.nextEditor')<CR> 
nnoremap <silent> <S-tab> <Cmd>call VSCodeNotify('workbench.action.previousEditor')<CR>

" Paste code
nnoremap <C-v> "+p
xnoremap <C-v> "+p

" Paste code
nnoremap <C-v> "+p
xnoremap <C-v> "+p

" Copy in visualmode
vmap <C-c> "+y

" ---- [ Plugins ] ----
" Install plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'phaazon/hop.nvim'
call plug#end()

" Hop.nvim
lua << EOF
  require'hop'.setup {}
EOF

nnoremap s :HopChar2<CR>
