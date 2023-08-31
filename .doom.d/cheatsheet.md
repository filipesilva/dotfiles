# DoomEmacs Cheatsheet


## Editor 

SPC f s - save a file (:w, cmd+s also works)
SPC .   - find a file
SPC SPC - find file in project
SPC u SPC SPC - clear cache then find file (SPC u is universal arg)
SPC f f - find file
SPC p p - switch to project
SPC q q - quit
SPC q r - restart and restore
SPC f p - open config file
SPC h r r - reload doom config
C-g - interrupt command
SPC t f - toggle fullscreen


## Windows and buffers

SPC ` - switch to previous buffer
SPC b b - switch workspace buffer
SPC b B - switch buffer
SPC b d - delete buffer
SPC w v - split vertically
SPC w s - split horizontally
C-w <number> - go to window
C-w p - previous window
SPC w d - delete window
SPC t Z - zen mode
SPC o p - open file sidebar, treemacs


## Movement

k - up
j - down
h - left
l - right
C-j/k - down/up in menus
0 - beginning of line
^ - beginning of non-whitespace
\$ - end of line (ignore the slash, just escaping for the editor highlighting)
9j - move down 9 lines
w - move forward by word
b - move backward by word
gg - first line
G - last line
; - repeat that command again
% - find matching brace, paren, etc
ma - mark a line in a file with marker "a"
`a - after moving around, go back to the exact position of marker "a"
'a - after moving around, go back to line of marker "a"
:marks - view all the marks
'' - go to the last place you were
C-o - go back to previous place in xref
C-i - go forward in xref


### Search

* - search for word under the cursor
    n - next instance
    N - previous
/ - search forward
? - search backward
SPC s s - list search in buffer
SPC s S - list search for word under cursor
SPC / - search in project, supports file ripgrep globs e.g `-- -g *_test.clj`
SPC * - search for word in project
C-c C-e - enter edit mode (from list search)
C-c C-c - commit edit changes
SPC ' - repeat last search


## Editing

A - insert at end of line
I - insert at beginning of line
o - insert in new line below
O - insert in new line above
J - join line below
dd/yy/cc - delete, yank (just copy), delete & change, all these add to kill-ring (clipboard)
dd - delete line
d9d - delete 9 lines after
dG - delete to EOF
dgg - delete to SOF
D - delete from cursor to end of line (also d$)
d0 - delete from cursor to start of line
yy - copy line
Y - copy from cursor to end of line
p - paste after cursor
P - paste before cursor (doesn't add to kill-ring)
C-p/n - cycle paste prev/next from kill ring
SPC i y - show and insert from kill-ring
S - in visual mode, surround with char
g z - multicursor menu
g z j/k - add cursor below/above (will move)
10 g z j - add 10 cursors below
g z z - add frozen cursor here (will not move)
g z m - make cursors for all matches of visual selection
SPC c x - list errors


## Git

SPC g g - enter magit
  c c - start commit
    C-c C-c - commit
    C-c C-k - cancel
  p p - push
RET - on unmerged changes, enters smerge
C-c ^ - smerge commands


## Shell
: - input emacs command, tab to autocomplete
SPC : - search emacs command
SPC p ! - run single shell command in project


## Help

K - help for symbol
SPC h k - describe keybind
SPC h f - describe function 
SPC h v - describe variable
SPC h d s - search for doomemacs docs
SPC h i - overall documentation


## Macros

q1 - record macro into register 1, q to stop
@1 - execute macro 1
Q - execute last macro


## Refactoring

### Align

C-c SPC - clojure-align
<none> - align-regexp
<none> - untabify

### expand-region

https://github.com/magnars/expand-region.el

= - expand 
- - contract
0 - reset


### evil-multiedit

https://github.com/hlissner/evil-multiedit

R - in visual mode, enter mc mode
return - toggle cursor, or toggle off all cursors outside of selection
C-n/p - next/previous cursor
I - insert at start of region
``

## evil-cleverparens

https://github.com/luxbock/evil-cleverparens

</> - barf/slurp, think "move the parens"
M-(/) - wrap next/previous, also {}[]
M-r - raise
M-s - splice (unwrap)
[{ - prev/next opening parens
]} - next/prev closing parens
() - back/forward up a sexp
H/L - back/forward a sexp
M-h/l - next toplevel form start/end (gets stuck within comment forms)
M-D/Y/C - delete/yank/change enclosing form, supports univeral arg for all/count


## CIDER

### debugging on clj
https://docs.cider.mx/cider/debugging/debugger.html

\ i i - inspect thing under cursor, will show how strings would be printed
SPC c x - show errors

## Etc

reload dir locals https://emacs.stackexchange.com/questions/13080/reloading-directory-local-variables
: (hack-dir-local-variables-non-file-buffer)
