" source artical
" https://fuqua.io/blog/2017/08/level-up-your-vsvim/
" place this file $HOME/_vimrc

" Set the leader key in comma
let mapleader=" "

" Enable line numbes
set relativenumber

" Enable syntax highlighting
syntax on

nnoremap R :vsc Refactor.Rename<CR>

map gi :vsc Edit.GoToImplementation<CR>
map gr :vsc Edit.FindAllReferences<CR>
map gp :vsc Edit.PeekDefinition<CR>

" Comment/Uncomment Code
nmap <Leader>cc :vsc Edit.CommentSelection<CR>
vmap <Leader>cc :vsc Edit.CommentSelection<CR>
nmap <Leader>cu :vsc Edit.UncommentSelection<CR>
vmap <Leader>cu :vsc Edit.UncommentSelection<CR>

" Mapping to quit Vim
nmap <Leader>w :w<CR>
nmap <Leader>x :wq<CR>

" Custom mapping to focus the solution explorer
nmap <Leader>ssd :vsc SolutionExplorer.SyncWithActiveDocument<CR>
nmap <Leader>se :vsc View.SolutionExplorer<CR>

" Map <Leader>t + {flag} to switch to the tab/document
" n = next
" p = previous
" N = last
" 1 = frist
" 1 .. 9 = range between 1 to 9

nmap <Leader>tn :tabnext<CR>
nmap <Leader>tp :tabprev<CR>
nmap <Leader>tN :tablast<CR>
nmap <Leader>t1 :tabfirst<CR>

for i in range(1,9)
	execute 'nmap <Leader>t' . i . ' :tabn ' . i . '<CR>'
endfor

" Map j and k for IntelliSense navigation
" inoremap <expr> <M-j> pwmvisible() ? "\<C-n>" : "\<M-j>"
" inoremap <expr> <M-k> pwmvisible() ? "\<C-p>" : "\<M-k>"

" Navigation in SE
" nmap <M-j> :vsc ProjectandSolutionContextMenus.Item.MoveDown<CR>
" nmap <M-k> :vsc ProjectandSolutionContextMenus.Item.MoveUp<CR>
