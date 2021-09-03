" Apprentice.vim -- Vim color scheme.
" Author:      Romain Lafourcade (romainlafourcade@gmail.com)
" Webpage:     https://github.com/romainl/Apprentice
" Description: Essentially a streamlining and conversion to xterm colors of 'sorcerer' by Jeet Sukumaran (jeetsukumaran@gmailcom)
" Last Change: 2020-12-19

highlight clear
set background=dark
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    if exists("syntax_on")
        syntax reset
    endif
endif
let colors_name = "user"

hi NonText ctermbg=NONE ctermfg=darkgrey cterm=NONE
hi EndOfBuffer ctermbg=NONE ctermfg=darkgrey cterm=NONE
hi LineNr ctermbg=NONE ctermfg=lightgrey cterm=NONE
hi MatchParen ctermbg=DarkGray ctermfg=NONE cterm=NONE
hi Comment ctermbg=NONE ctermfg=lightcyan cterm=NONE
hi String ctermbg=NONE ctermfg=darkyellow cterm=NONE
hi Type ctermbg=NONE ctermfg=lightblue cterm=NONE
hi Pmenu ctermbg=black ctermfg=lightgrey cterm=NONE
hi PmenuSbar ctermbg=darkgrey ctermfg=NONE cterm=NONE
hi PmenuSel ctermbg=darkblue ctermfg=lightgrey cterm=NONE
hi PmenuThumb ctermbg=lightgrey ctermfg=NONE cterm=NONE
hi ErrorMsg ctermbg=white ctermfg=darkred cterm=reverse
hi TabLine ctermbg=darkgrey ctermfg=lightgrey cterm=NONE
hi TabLineFill ctermbg=black ctermfg=lightgrey cterm=NONE
hi TabLineSel ctermbg=NONE ctermfg=lightgrey cterm=NONE
""hi ToolbarLine ctermbg=black ctermfg=NONE cterm=NONE
""hi ToolbarButton ctermbg=darkgrey ctermfg=lightgrey cterm=NONE
""hi Cursor ctermbg=lightgrey ctermfg=NONE cterm=NONE
hi CursorLineNr ctermbg=NONE ctermfg=Yellow cterm=bold
hi CursorLine ctermbg=NONE ctermfg=NONE cterm=underline
""hi StatusLine ctermbg=darkyellow ctermfg=black cterm=NONE
""hi StatusLineNC ctermbg=darkgrey ctermfg=darkyellow cterm=NONE
""hi StatusLineTerm ctermbg=darkyellow ctermfg=black cterm=NONE
""hi StatusLineTermNC ctermbg=darkgrey ctermfg=darkyellow cterm=NONE
""hi Visual ctermbg=black ctermfg=blue cterm=reverse
""hi VisualNOS ctermbg=NONE ctermfg=NONE cterm=underline
""hi VertSplit ctermbg=darkgrey ctermfg=darkgrey cterm=NONE
""hi WildMenu ctermbg=blue ctermfg=black cterm=NONE
""hi Function ctermbg=NONE ctermfg=yellow cterm=NONE
""hi SpecialKey ctermbg=NONE ctermfg=darkgrey cterm=NONE
""hi Title ctermbg=NONE ctermfg=white cterm=NONE
""hi DiffAdd ctermbg=black ctermfg=green cterm=reverse
""hi DiffChange ctermbg=black ctermfg=magenta cterm=reverse
""hi DiffDelete ctermbg=black ctermfg=darkred cterm=reverse
""hi DiffText ctermbg=black ctermfg=red cterm=reverse
""hi IncSearch ctermbg=darkred ctermfg=black cterm=NONE
""hi Search ctermbg=yellow ctermfg=black cterm=NONE
""hi Directory ctermbg=NONE ctermfg=cyan cterm=NONE
""hi debugPC ctermbg=darkblue ctermfg=NONE cterm=NONE
""hi debugBreakpoint ctermbg=darkred ctermfg=NONE cterm=NONE
""hi SpellBad ctermbg=NONE ctermfg=darkred cterm=undercurl
""hi SpellCap ctermbg=NONE ctermfg=cyan cterm=undercurl
""hi SpellLocal ctermbg=NONE ctermfg=darkgreen cterm=undercurl
""hi SpellRare ctermbg=NONE ctermfg=red cterm=undercurl
""hi ColorColumn ctermbg=black ctermfg=NONE cterm=NONE
""hi Normal ctermbg=black ctermfg=lightgrey cterm=NONE

""hi Constant ctermbg=NONE ctermfg=red cterm=NONE
""hi Statement ctermbg=NONE ctermfg=blue cterm=NONE
""hi PreProc ctermbg=NONE ctermfg=darkcyan cterm=NONE
""hi Special ctermbg=NONE ctermfg=darkgreen cterm=NONE
hi Error ctermbg=white ctermfg=red cterm=underline

hi link Terminal Normal
hi link Number Constant
hi link CursorIM Cursor
hi link Boolean Constant
hi link Character Constant
hi link Conditional Statement
hi link Debug Special
hi link Define PreProc
hi link Delimiter Special
hi link Exception Statement
hi link Float Number
hi link HelpCommand Statement
hi link HelpExample Statement
hi link Include PreProc
hi link Keyword Statement
hi link Label Statement
hi link Macro PreProc
hi link Number Constant
hi link Operator Statement
hi link PreCondit PreProc
hi link Repeat Statement
hi link SpecialChar Special
hi link SpecialComment Special
hi link StorageClass Type
hi link Structure Type
hi link Tag Special
hi link Terminal Normal
hi link Typedef Type
hi link htmlTagName Statement
hi link htmlEndTag htmlTagName
hi link htmlLink Function
hi link htmlSpecialTagName htmlTagName
hi link htmlTag htmlTagName
hi link htmlBold Normal
hi link htmlItalic Normal
hi link htmlArg htmlTagName
hi link xmlTag Statement
hi link xmlTagName Statement
hi link xmlEndTag Statement
hi link markdownItalic Preproc
hi link asciidocQuotedEmphasized Preproc
hi link diffBDiffer WarningMsg
hi link diffCommon WarningMsg
hi link diffDiffer WarningMsg
hi link diffIdentical WarningMsg
hi link diffIsA WarningMsg
hi link diffNoEOL WarningMsg
hi link diffOnly WarningMsg
hi link diffRemoved WarningMsg
hi link diffAdded String
hi link QuickFixLine Search

" Generated with RNB (https://github.com/romainl/vim-rnb)
