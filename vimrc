" Chargement de Pathogen
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
" Activation de l'indentation automatique
set autoindent
" Redefinition des tabulations
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=8
" Activation de la detection auto du type de fichier
filetype on
filetype plugin indent on
" longeur maximale des lignes
set textwidth=79
" Activation de la couleur
syntax on
" Mode fond d'ecran sombre 
set bg=dark
" Mode de recherche
set hlsearch
" Lescture des raccourcis clavier
execute 'source ' . $HOME . '/.vim/shortkeys.vim'
" Activation de la completion pour python
au FileType python set omnifunc=pythoncomplete#Complete
" Activation de la completion pour javascript
au FileType javascript set omnifunc=javascriptcomplete#CompleteJS
" Activation de la completion pour html
au FileType html set omnifunc=htmlcomplete#CompleteTags
" Activation de la completion pour css
au FileType css set omnifunc=pythoncomplete#CompleteCSS
" Definition du type de completion de Super Tab
let g:SuperTabDefaultCompletionType = "context"
" Activation de la visualisation de la documentation
set completeopt=menuone,longest,preview
" Fonction pour afficher les messages
function! s:DisplayStatus(msg)
    echoh1 Todo
    echo a:msg
    echoh1 None
endfunction
" Nettoyage d'un fichier^M
" remplace les tab par un espace
" supprime les carateres ^M en fin de ligne
function! CleanCode()
    %retab
    %s/^M//g
    call s:DisplayStatus('Code clean')
endfunction
" Affichage des numero de ligne
set number
highlight LineNr ctermbg=blue ctermfg=gray
" Surligne la derniere colonne du dernier caractere autorise par testwidth
set cc=+1
