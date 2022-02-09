# Vimrc - No plugin

Vim management in a single .vimrc file.
`user.vim` is **colorscheme**, you can use your own vim script or the default one.

## Prerequisites

* The Vim version must be at least v8.1.2291 (or you may encounter netrw gitingnore over-match problems).
* Checking for X11-clipboard support in terminal.
```
vim --version | grep clipboard
```
If you see `+clipboard' or `+xterm_clipboard`, you are good to go.
