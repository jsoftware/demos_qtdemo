
coclass 'qtdemo'

run_plotc=: 3 : 0
require'~addons/ide/qt/console.ijs'
require 'plot math/misc/trig'

if. glfree_jglc_ ::1: '' do.
  smoutput 'This demo is not supported on ', UNAME, ' ', wd 'version'
  return.
end.

steps=: {. + (1&{ - {.) * (i.@>: % ])@{:

pd 'reset'
pd 'title sin(exp) vs cos(exp)'
pd 'color red,green'
pd 'key sin(exp),cos(exp)'
x=. steps _1 2 100
pd x;sin ^x
pd x;cos ^x
pd 'qtc 400 400'
)

run_plotc''
