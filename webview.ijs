NB. webview
NB.
NB. !!! this is experimental and *will* change...
NB.
NB. cover for the QWebView
NB. cmd so far:
NB.  set c url url
NB.  set c baseurl url
NB.  set c html text

coclass 'qtdemo'

NB. =========================================================
webview=: 3 : 0
wd 'pc webview'
wd 'menupop "&File";'
wd 'menu quit "&Quit" "Ctrl+Q" "" "";'
wd 'menupopz;'
wd 'cc e edit'
wd 'splitv 1 1 250 250'
wd 'cc w1 webview'
wd 'splitsep'
wd 'cc w2 webview'
wd 'splitend'
wd 'set e text *http://news.yahoo.com'
wd 'set w1 url *http://news.yahoo.com'
wd 'set w2 baseurl *http://www.jsoftware.com'
wd 'set w2 html *<html><body><img src=''./zippy.gif'' /></body></html>'
wd 'pmove _1 _1 650 700'
wd 'pshow'
)
webview_quit_button=: webview_close

NB. =========================================================
webview_e_button=: 3 : 0
smoutput e
wd 'set w1 url *',e
)

NB. =========================================================
webview_w1_curl=: 3 : 0
wd 'set e text *',w1_curl
)

NB. =========================================================
webview_close=: 3 : 0
wd 'pclose'
)

NB. =========================================================
webview''
