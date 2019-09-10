" Special
let background = "#040A33"
let foreground = "#a2e9d0"
let cursor     = "#a2e9d0"

" Colors
let color0  = "#040A33"
let color1  = "#C1355D"
let color2  = "#396087"
let color3  = "#467090"
let color4  = "#2B7DF6"
let color5  = "#3FBCA8"
let color6  = "#4B9E9D"
let color7  = "#a2e9d0"
let color8  = "#71a391"
let color9  = "#C1355D"
let color10 = "#396087"
let color11 = "#467090"
let color12 = "#2B7DF6"
let color13 = "#3FBCA8"
let color14 = "#4B9E9D"
let color15 = "#a2e9d0"

" Custom Settings
syntax on
set number
set ignorecase
set viminfo=""

" Autocmd's

autocmd Filetype rmd map <F5> :!echo<space>"require(rmarkdown);<space>render('<c-r>%', 'pdf_document')"<space>\|<space>R<space>--vanilla<enter>
