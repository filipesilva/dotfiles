# DoomEmacs Cheatsheet


## Editor 

SPC f s - save a file (:w, cmd+s also works)
SPC .   - find a file
SPC SPC - find file in project
SPC p p - switch to project
SPC q q - quit
SPC q r - restart and restore
SPC f p - open config file
SPC h r r - reload doom config


## Windows and buffers

SPC ` - switch to previous buffer
SPC b b - switch workspace buffer
SPC b B - switch buffer
SPC b d - delete buffer
SPC w v - split vertically
SPC w s - split horizontally
SPC w <number> - go to window
SPC w d - delete window
SPC t Z - zen mode


## Movement

k - up
j - down
h - left
l - right
0 - beginning of line
^ - beginning of non-whitespace
$ - end of line
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


### Search

* - search for word under the cursor
    n - next instance
    N - previous
/ - search forward
? - search backward
SPC s s - list search in buffer
SPC s S - list search for word under cursor
SPC / - search in project
SPC * - search for word in project
C-c C-e - enter edit mode (from list search)
C-c C-c - commit edit changes


## Editing

A - insert at end of line
I - insert at beginning of line
o - insert in new line below
O - insert in new line above
J - join line below
dd - delete line
d9d - delete 9 lines after
D - delete from cursor to end of line
yy - copy line
Y - copy from cursor to end of line
p - paste after cursor
P = paste before cursor


## Git

SPC g g - enter magit
  c c - start commit
    C-c C-c - commit
    C-c C-k - cancel
  p p - push


## Shell
: - input emacs command
SPC : - search emacs command
SPC p ! - run single shell command in project


## Help

K - help for symbol
SPC h k - describe keybind
SPC h f - describe function 
SPC h v - describe variable


## Refactoring

### Align

C+c SPC - clojure-align
<none> - align-regexp


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


## evil-cleverparens

https://github.com/luxbock/evil-cleverparens

> - slurp
< - barf
M-(/) - wrap next/previous, also {}[]
M-r - raise
M-s - splice
