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

" Autocompile Markdown
autocmd BufWritePost *.*md !R -e "rmarkdown::render('%', 'pdf_document')"; mv *-* $HOME/Documents/PDF/"$(find . | sed s:./::g | sed 's:-: :g' | grep pdf)" 2>/dev/null; mv *.pdf $HOME/Documents/PDF/ 2>/dev/null

" Autocompile Groff
autocmd BufWritePost *.ms !groff -k -T pdf -m ms '%' > "$HOME/Documents/PDF/$(basename '%' .ms).pdf"

" Autocompile Java
autocmd BufWritePost *.java !javac '%' && mkdir -p $HOME/Documents/Java/$(basename '%' .java) && mv "$(basename '%' .java)".class $HOME/Documents/Java/$(basename '%' .java)/ && mv '%' $HOME/Documents/Java/$(basename '%' .java)/
