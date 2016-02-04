
" I'm so tired of having backup/swap files in my code directories
" They're already in my .gitignore, but they trigger the watcher
" and cause my project to rebuild even before I save a file.
" https://news.ycombinator.com/item?id=1690673
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//

