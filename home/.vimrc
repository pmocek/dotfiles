:set tabstop=4
:set shiftwidth=4
:set expandtab
:set autoindent
:set guifont=Monospace\ 8
au FileType json command -range=% -nargs=* Tidy <line1>,<line2>! json_xs -f json -t json-pretty
execute pathogen#infect()
