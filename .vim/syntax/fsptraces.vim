syntax clear
syn match tracError "E>"
syn match tracError "ERR>"
syn match tracGood "INF>"
syn match tracGood "I>"

syn match tracComment "^-\+$"
syn match tracComment "|"

syn match tracTime "^[0-9]\+\.[0-9]\+"

syn match tracHeader "^ \+[A-Z][A-Za-z&\/ ]\+$"
syn match tracValue "0x[0-9A-Fa-f]\{8\}"
syn match tracValue "\[\@\<=[^\[\]]\+\]\@="
syn match tracFieldName "\(^| \)\@\<=[a-zA-z][^:]*:\@="

highlight link tracError Error
highlight link tracHeader Statement
highlight tracTime ctermfg=6
highlight link tracFieldName Statement
highlight tracGood ctermfg=2
"highlight tracValue ctermfg=5
highlight link tracValue Constant
highlight link tracComment Comment
