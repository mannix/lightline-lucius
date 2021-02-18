" lucius colorscheme for lightline
"
" File:       lucius.vim
" Maintainer: Mike Mannix <mike.mannix@gmail.com>
" License:    MIT

let s:mono0   = '#171717'
let s:mono1   = '#333333'
let s:mono2   = '#474747'
let s:mono3   = '#5C5C5C'
let s:mono4   = '#707070'
let s:mono5   = '#F0F0F0'
let s:c_mono0 = 235
let s:c_mono1 = 237
let s:c_mono2 = 236
let s:c_mono3 = 239
let s:c_mono4 = 245
let s:c_mono5 = 252

let s:red       = '#FF9D9B'
let s:green     = '#E0FBC1'
let s:blue      = '#BDFEFE'
let s:magenta   = '#FFE2FE'
let s:c_red     = 203
let s:c_green   = 150
let s:c_blue    = 110
let s:c_magenta = 216

let s:p = {
      \ 'normal' : {}, 
      \ 'inactive' : {}, 
      \ 'insert' : {}, 
      \ 'replace' : {}, 
      \ 'visual' : {}, 
      \ 'tabline' : {}}

let s:p.normal.middle = [ [s:mono4, s:mono1, s:c_mono4, s:c_mono1] ]
let s:p.normal.left   = [ [s:mono0, s:green, s:c_mono0, s:c_green], 
                        \ [s:mono5, s:mono3, s:c_mono5, s:c_mono3] ]
let s:p.normal.right  = [ [s:mono0, s:mono4, s:c_mono0, s:c_mono4], 
                        \ [s:mono0, s:mono4, s:c_mono0, s:c_mono4] ]

let s:p.inactive.middle = [ [s:mono4, s:mono2, s:c_mono4, s:c_mono2] ]
let s:p.inactive.left   = [ [s:mono4, s:mono2, s:c_mono4, s:c_mono2], 
                          \ [s:mono4, s:mono2, s:c_mono4, s:c_mono2] ]
let s:p.inactive.right  = [ [s:mono4, s:mono2, s:c_mono4, s:c_mono2], 
                          \ [s:mono4, s:mono2, s:c_mono4, s:c_mono2] ]

let s:p.insert.left = [ [s:mono0, s:blue, s:c_mono0, s:c_blue], 
                      \ s:p.normal.left[1]]
let s:p.replace.left = [ [s:mono0, s:red, s:c_mono0, s:c_red], 
                      \ s:p.normal.left[1]]
let s:p.visual.left  = [ [s:mono0, s:magenta, s:c_mono0, s:c_magenta], 
                      \ s:p.normal.left[1]]

let s:p.tabline.middle = [ [s:mono0, s:mono4, s:c_mono0, s:c_mono4] ]
let s:p.tabline.left   = [ [s:mono4, s:mono1, s:c_mono4, s:c_mono1], 
                         \ [s:mono0, s:mono4, s:c_mono0, s:c_mono4] ]
let s:p.tabline.right  = [ [s:mono4, s:mono1, s:c_mono4, s:c_mono1], 
                         \ [s:mono5, s:mono0, s:c_mono5, s:c_mono0] ]
let s:p.tabline.tabsel = [ [s:mono5, s:mono0, s:c_mono5, s:c_mono0] ]

let s:p.normal.error   = [ [s:mono0, s:red, s:c_mono0, s:c_red] ]
let s:p.normal.warning = [ [s:mono0, s:magenta, s:c_mono0, s:c_magenta] ]

let g:lightline#colorscheme#lucius#palette = s:p
