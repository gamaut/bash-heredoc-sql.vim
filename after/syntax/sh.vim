let s:previous_syntax = b:current_syntax
unlet b:current_syntax
syntax include @hdsql syntax/sql.vim
syntax region shHeredocSQL matchgroup=Statement start=+<<\z(SQL\)+ end=+^\z1$+ contains=@hdsql
let b:current_syntax = s:previous_syntax
