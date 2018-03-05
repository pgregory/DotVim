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

" vimwiki stuff "
" Run multiple wikis "
let g:vimwiki_list = [
                        \{'path': '~/DropBox/VimWiki/personal.wiki'},
                        \{'path': '~/DropBox/VimWiki/tech.wiki'}
                \]
au BufRead,BufNewFile *.wiki set filetype=vimwiki
:autocmd FileType vimwiki map d :VimwikiMakeDiaryNote
function! ToggleCalendar()
  execute ":Calendar"
  if exists("g:calendar_open")
    if g:calendar_open == 1
      execute "q"
      unlet g:calendar_open
    else
      g:calendar_open = 1
    end
  else
    let g:calendar_open = 1
  end
endfunction
:autocmd FileType vimwiki map c :call ToggleCalendar()
