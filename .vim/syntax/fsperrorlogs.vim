syntax clear
syn match errlBad "Unrecoverable Error"
syn match errlGood "Informational Event"
syn match errlComment "^|"
syn match errlComment "|$"
syn match errlComment "^|-\+|$"
syn match errlHeader "|\@\<= \+[A-Z][A-Za-z&\/ ]\+ \+|\@="
syn match errlValue "0x[0-9A-Fa-f]\{8\}"
syn match errlSrc "[0-9A-F]\{8\}"
syn match errlFieldName "\(^| \)\@\<=[a-zA-z][^:]*:\@="
syn match errlTime "..\/..\/.... ..:..:.."

highlight link errlBad Error
highlight link errlHeader Statement
highlight link errlFieldName Statement
highlight errlGood ctermfg=2
highlight errlValue ctermfg=5
highlight errlSrc ctermfg=5
highlight link errlComment Comment
highlight errlTime ctermfg=6
