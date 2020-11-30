set background=dark
let g:colors_name="cool_name"
" you could detect background == dark || light here and require
" " different files
lua require('lush')(require('lush_theme.cool_name'))
