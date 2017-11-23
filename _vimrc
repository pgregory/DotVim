syntax on
filetype plugin indent on

set background=dark
colorscheme solarized

let g:airline_theme='one'

set ts=2 sw=2 sts=2 expandtab

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard && git submodule foreach "git ls-files -co --exclude-standard | while read i; do echo \"\$path/\$i\"; done"']
let g:ctrlp_working_path_mode = 0

set backupcopy=yes
let g:AutoPairsUseInsertedCount = 1

set cursorline
