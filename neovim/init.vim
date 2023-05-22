let mapleader="\<space>"
set ignorecase

"  Navigate editor
nnoremap <silent> <leader>t <Cmd>call VSCodeNotify('workbench.action.toggleSidebarVisibility')<CR>
nnoremap <silent> <leader>f <Cmd>call VSCodeNotify('workbench.action.findInFiles')<CR>
nnoremap <silent> <leader>b <Cmd>call VSCodeNotify('breadcrumbs.focusAndSelect')<CR>
nnoremap <silent> <leader>e <Cmd>call VSCodeNotify('workbench.explorer.fileView.focus')<CR>
nnoremap <silent> <leader>m <Cmd>call VSCodeNotify('editor.action.marker.nextInFiles')<CR>
nnoremap <silent> <leader>g <Cmd>call VSCodeNotify('workbench.view.scm')<CR>
nnoremap <silent> <leader>s <Cmd>call VSCodeNotify('workbench.action.splitEditor')<CR>

" Miscellaneous
nnoremap <silent> <leader>n :nohl<CR>
vnoremap <leader>p "_dP
nnoremap <silent> <leader>r <Cmd>call VSCodeNotify('editor.action.rename')<CR>
nnoremap <silent> gD <Cmd>call VSCodeNotify('editor.action.revealDefinitionAside')<CR>
inoremap <C-g> <C-o>

" Indentation
nnoremap <silent> > >>
xnoremap <silent> > >gv
nnoremap <silent> < <<
xnoremap <silent> < <gv

"  Navigate through tabs
nnoremap <silent> tab <Cmd>call VSCodeNotify('workbench.action.nextEditor')<CR> 
nnoremap <silent> <S-tab> <Cmd>call VSCodeNotify('workbench.action.previousEditor')<CR>

"  Paste code
nnoremap <C-v> "+p
xnoremap <C-v> "+p

"  Paste code
nnoremap <C-v> "+p
xnoremap <C-v> "+p

"  Copy in visualmode
vmap <C-c> "+y

"  TODO: Easy motions
Plug 'asvetliakov/vim-easymotion'
nmap s <Plug>(easymotion-bd-f)
