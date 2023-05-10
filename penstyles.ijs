NB. pen styles demo

coclass 'qtdemo'
coinsert 'jgl2'

NB. =========================================================
PenStyles=: cutopen 0 : 0
No Pen
Solid Line
Dash Line
Dot Line
Dash Dot Line
Dash Dot Dot Line
)

NB. =========================================================
penstyle_run=: 3 : 0
require 'gl2'
coinsert 'jgl2'
wd 'pc penstyle escclose closeok;pn Pen Styles'
wd 'menupop "&File";'
wd 'menu quit "&Quit" "Ctrl+Q" "" "";'
wd 'menupopz;'
wd 'minwh 400 270'
wd 'cc g isidraw flush'
wd 'pshow'
off=. <.-:{:glqextent'X'
glfill 255 255 255 255
glrgb 0 0 255
for_i. i.#PenStyles do.
  y=. 30+40*i
  glpen 3,i
  gllines 25,y,200,y
  gltextxy 230,y-off
  gltext (":i),' ',i pick PenStyles
end.
glpaint''
)
penstyle_quit_button=: wd bind 'pclose'

penstyle_run''
