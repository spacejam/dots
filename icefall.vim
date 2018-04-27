" Vim color file
"     Version:    1.2 2014.02.04
"     Author:     Tyler Neely <t AT jujit DOT su>
"     License:    GPL
"
" Copyright 2014 Tyler Neely
"
" This program is free software: you can redistribute it and/or modify
" it under the terms of the GNU General Public License as published by
" the Free Software Foundation, either version 3 of the License, or
" (at your option) any later version.
"
" This program is distributed in the hope that it will be useful,
" but WITHOUT ANY WARRANTY; without even the implied warranty of
" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
" GNU General Public License for more details.
"
" You should have received a copy of the GNU General Public License
" along with this program.  If not, see <http://www.gnu.org/licenses/>.

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="icefall"

hi Comment          cterm=none                   ctermfg=52
hi Constant         cterm=none                   ctermfg=231  " self, block comments, newtype literals
hi String           cterm=none                   ctermfg=30
hi Character        cterm=none                   ctermfg=30
hi Number           cterm=none                   ctermfg=33
hi Float            cterm=none                   ctermfg=33
hi Identifier       cterm=none                   ctermfg=231  " type definitions
hi Type             cterm=none                   ctermfg=231  " type constraints, derive, static
hi PreProc          cterm=none                   ctermfg=194  " macros, attributes, types
hi Function         cterm=none                   ctermfg=none " function call
hi Statement        cterm=none                   ctermfg=26   " for if else fn
hi Exception        cterm=none                   ctermfg=194  " unsafe
hi Operator         cterm=none                   ctermfg=160
hi Label            cterm=none                   ctermfg=136
hi Special          cterm=none                   ctermfg=89    " dots in between, lifetimes
hi Underlined       cterm=underline              ctermfg=227
hi Ignore           cterm=none                   ctermfg=235
hi Error            cterm=none       ctermbg=52  ctermfg=231
hi Todo             cterm=bold       ctermbg=30  ctermfg=16

hi hsComment          cterm=none                   ctermfg=89
hi hsConstant         cterm=none                   ctermfg=159
hi hsString           cterm=none                   ctermfg=30
hi hsCharacter        cterm=none                   ctermfg=30
hi hsNumber           cterm=none                   ctermfg=33
hi hsFloat            cterm=none                   ctermfg=33
hi hsIdentifier       cterm=none                   ctermfg=285
hi hsFunction         cterm=none                   ctermfg=280
hi hsStatement        cterm=none                   ctermfg=281
hi hsException        cterm=none                   ctermfg=195
hi hsOperator         cterm=none                   ctermfg=70
hi hsLabel            cterm=none                   ctermfg=63
hi hsPreProc          cterm=none                   ctermfg=194
hi hsType             cterm=none                   ctermfg=74
hi hsSpecial          cterm=none                   ctermfg=89
hi hsUnderlined       cterm=underline              ctermfg=227
hi hsIgnore           cterm=none                   ctermfg=235
hi hsError            cterm=none       ctermbg=52  ctermfg=231
hi hsTodo             cterm=bold       ctermbg=89  ctermfg=89

hi Normal           cterm=none       ctermbg=232 ctermfg=189
hi StatusLine       cterm=none       ctermbg=236 ctermfg=231
hi StatusLineNC     cterm=none       ctermbg=236 ctermfg=103
hi User1            cterm=bold       ctermbg=236 ctermfg=223
hi User2            cterm=none       ctermbg=236 ctermfg=240
hi VertSplit        cterm=none       ctermbg=236 ctermfg=103
hi TabLine          cterm=none       ctermbg=236 ctermfg=145
hi TabLineFill      cterm=none       ctermbg=236
hi TabLineSel       cterm=none       ctermbg=240 ctermfg=253
hi LineNr           cterm=none                   ctermfg=238
hi NonText          cterm=bold       ctermbg=233 ctermfg=241
hi Folded           cterm=none       ctermbg=234 ctermfg=136
hi FoldColumn       cterm=none       ctermbg=236 ctermfg=103
hi SignColumn       cterm=none       ctermbg=236 ctermfg=103
hi CursorColumn     cterm=none       ctermbg=234
hi CursorLine       cterm=none       ctermbg=234
hi IncSearch        cterm=bold       ctermbg=63  ctermfg=232
hi Search           cterm=none       ctermbg=36  ctermfg=232
hi Visual           cterm=none       ctermbg=24
hi WildMenu         cterm=bold       ctermbg=35  ctermfg=232
hi ModeMsg          cterm=bold                   ctermfg=110
hi MoreMsg          cterm=bold                   ctermfg=121
hi Question         cterm=bold                   ctermfg=121
hi ErrorMsg         cterm=none       ctermbg=88  ctermfg=255
hi WarningMsg       cterm=none       ctermbg=58  ctermfg=255
hi SpecialKey       cterm=none                   ctermfg=77
hi Title            cterm=bold                   ctermfg=147
hi Directory                                     ctermfg=105
hi DiffAdd          cterm=none       ctermbg=18
hi DiffChange       cterm=none       ctermbg=58
hi DiffDelete       cterm=none       ctermbg=52  ctermfg=58
hi DiffText         cterm=none       ctermbg=53
hi Pmenu            cterm=none       ctermbg=17  ctermfg=121
hi PmenuSel         cterm=none       ctermbg=24  ctermfg=121
hi PmenuSbar        cterm=none       ctermbg=19
hi PmenuThumb       cterm=none       ctermbg=37
hi MatchParen       cterm=bold       ctermbg=24
hi SpellBad         cterm=none       ctermbg=88
hi SpellCap         cterm=none       ctermbg=18
hi SpellLocal       cterm=none       ctermbg=30
hi SpellRare        cterm=none       ctermbg=90

hi OperatorCurlyBrackets cterm=bold ctermfg=75

" highlight modes
autocmd InsertEnter * hi StatusLine ctermbg=52
autocmd InsertEnter * hi User1      ctermbg=52
autocmd InsertEnter * hi User2      ctermbg=52
autocmd InsertLeave * hi User2      ctermbg=236
autocmd InsertLeave * hi User1      ctermbg=236
autocmd InsertLeave * hi StatusLine ctermbg=236
autocmd CmdwinEnter * hi StatusLine ctermbg=22
autocmd CmdwinEnter * hi User1      ctermbg=22
autocmd CmdwinEnter * hi User2      ctermbg=22
autocmd CmdwinLeave * hi User2      ctermbg=236
autocmd CmdwinLeave * hi User1      ctermbg=236
autocmd CmdwinLeave * hi StatusLine ctermbg=236


