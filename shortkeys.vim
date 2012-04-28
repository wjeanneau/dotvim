" Actvation et desactivation de la fenetre d'exploration des fichier
map <F9> <Esc>:NERDTreeToggle<CR>
" Affichage et masquage de la fenetre TagList
map <F8> <Esc>:TlistToggle<CR>
" Affichage de la liste des taches
map <C-t> <Plug>TaskList
" Affichage de l'historique des modifications
map <C-h> <Esc>:GundoToggle<CR>
" Execution des test unitaire
nmap <silent><Leader>f <Esc>:Pytest file<CR>
nmap <silent><Leader>c <Esc>:Pytest class<CR>
nmap <silent><Leader>m <Esc>:Pytest method<CR>
" Appel de la fonction de nettoyage 
map <F3> <Esc>:call CleanCode()<CR>
imap <F3> <Esc>:call CleanCode()<CR>i
