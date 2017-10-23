syntax on
filetype plugin indent on

set background=dark
colorscheme solarized

let g:airline_theme='one'

set ts=2 sw=2 sts=2 expandtab

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

set backupcopy=yes
let g:AutoPairsUseInsertedCount = 1
