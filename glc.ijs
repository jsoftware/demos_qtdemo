NB. eric's gl2 demo on jconsole

NB. does not run under linux tty console
NB. inside jconsole run using,
NB. load '~addons/demos/qtdemo/glc.ijs'

coclass 'qtdemo'

glc_run=: 3 : 0
require'~addons/ide/qt/console.ijs'
((<'jgl2') -.~ copath 'qtdemo') copath 'qtdemo'
coinsert 'jglc'

if. glfree ::1: '' do.
  smoutput 'This demo is not supported on ', UNAME, ' ', wd 'version'
  return.
end.

glinit 400 400  NB. initialize width,height

data=: ''
'w h'=: glqwh''
NB. draw grid
glfill 255 255 255 255
glrgb 128 128 18
glpen 0 1
for_i. 50* i.>.h%50 do.
  gllines 0,i,w,i
end.
for_i. 50* i.>.w%50 do.
  gllines i,0,i,h
end.

glrgb 0 0 255
glpen 5 1
glrgb 120 120 120
glbrush''
glrect 0 50,w,20
glrgb 255 0 0
glpen 1 1
glrgb 0 0 255
glbrush''
glrect 10 10 5 5
glrect 15 15 5 5

NB. arc pie
glrgb 255 0 0
glpen 0 1
glrgb 0 0 255
glbrush''
glpie 40 140 60 60 200 70 70 0
glarc 100 100 160 160 300 170 170 0

NB. clip
glrgb 255 0 0
glpen 5 1
glrgb 0 0 255
glbrush''
glclip 40 40 200 100
glrect 20 20 200 200
glclipreset''
gllines 10 10 300 300

NB. text
glrgb 255 0 0
gltextcolor''
glfont '"courier new" 20'
gltextxy 150 150
glfontangle 450
gltext 'how now'

NB. polygon
glrgba 0 255 0 128
glpen 1 1
glbrush''
glpolygon 250 200 300 300 400 100 300 150

NB. ellipse
glellipse 200 200 200 100

NB. qpixels pixels
data=: glqpixels 200 200 40 40
smoutput 10{.data
glpixels 20 200 40 40,data

glsavefile jpath '~temp/glc.png'   NB. save image
glfree''                           NB. free resource held
((<'jglc') -.~ copath 'qtdemo') copath 'qtdemo'
viewimage_j_ jpath '~temp/glc.png'
)

NB. =========================================================
glc_run''
