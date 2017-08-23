NB. browser
NB.
NB. cover for the QTextBrowser
NB. cmd so far:
NB.  set c source url
NB.  set c baseurl url
NB.  set c html text

coclass 'qtdemo'

NB. =========================================================
browser=: 3 : 0
wd 'pc browser'
wd 'bin v'
wd 'bin h'
wd 'cc print button'
wd 'cc preview button'
wd 'cc choose button'
wd 'bin sz'
wd 'cc e static;cn ""'
wd 'cc w1 browser'
wd 'bin z'
wd 'cc w2 browser'
wd 'set e text *',p=. jpath '~addons/demos/qtdemo/browser.htm'
wd 'set w1 source *',p
wd 'set w2 baseurl *', jpath '~addons/graphics/bmp/'  NB. must be a file or have trailing /
wd 'set w2 html *<html><body>hello world<p><img src="./toucan.bmp" /></body></html>'
if. fexists jpath '~addons/docs/help/index.htm' do.
  wd 'cc s1 static;cn ""'
  wd 'cc w3 browser'
  wd 'set w3 source *',jpath '~addons/docs/help/index.htm'
end.
wd 'pshow'
)

NB. =========================================================
browser_print_button=: 3 : 0
wd 'cmd w1 print'
)

NB. =========================================================
browser_preview_button=: 3 : 0
wd 'cmd w1 printpreview'
)

NB. =========================================================
browser_choose_button=: 3 : 0
p=. 'htm (*.htm *.html)|All Files (*.*)'
e=. wd 'mb open1 "Open file " "',(jpath '~/'),'" "',p,'"'
wd 'set w1 source *',e
)

NB. =========================================================
browser_w1_source=: 3 : 0
wd 'set e text *',w1_baseurl
)

NB. =========================================================
browser_w3_source=: 3 : 0
wd 'set s1 text *',w3_baseurl
)

NB. =========================================================
browser_close=: 3 : 0
wd 'pclose'
)

NB. =========================================================
browser''
