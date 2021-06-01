" MAL syntax
if exists("b:current_syntax")
    finish
endif


" Keywords?
syntax keyword malKeyword class category asset associations include extends
highlight link malKeyword Keyword


" Comments?
syntax match malComment "\v^#.*$"
highlight link malComment Comment

" Operators
syntax match malOperator "\v\&"
syntax match malOperator "\v\|"
syntax match malOperator "\v.+\#"
syntax match malOperator "\v\-"
syntax match malOperator "\v\-\>"
syntax match malOperator "\v\+\>"
syntax match malOperator "\v\<\-"
syntax match malOperator "\v\/\\"
syntax match malOperator "\v\\\/"
syntax match malOperator "\v\-\-\>"
syntax match malOperator "\v\<\-\-"
highlight link malOperator Operator

syntax region malString start=/\v\"/ skip=/\v\\./ end=/\v\"/
highlight link malString String


syntax region malDelimeter start=/\v\<\-\-/ skip=/\v\\./ end=/\v\-\-\>/
highlight link malDelimiter Delimiter

"syntax region malString start=/\v\[/ skip=/\v\\./ end=/\v\]/
"highlight link malString String


syntax keyword malFunction Bernoulli Binomial Exponential Gamma LogNormal Pareto TruncatedNormal Uniform
highlight link malFunction Function


let b:current_syntax = "mal"


