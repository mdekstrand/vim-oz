" Vim syntax file for the Oz programming language

if version < 600
	syntax clear
elseif exists("b:current_syntax")
	finish
endif

syn keyword ozKeyword andthen at attr case catch choice
syn keyword ozKeyword class cond declare define dis
syn keyword ozKeyword div do else elsecase elseif end
syn keyword ozKeyword export fail false feat finally for from
syn keyword ozKeyword fun functor if import in local
syn keyword ozKeyword lock meth mod not of or orelse
syn keyword ozKeyword prepare proc prop raise require
syn keyword ozKeyword self skip then thread true try
syn keyword ozKeyword unit
syn keyword ozKeyword : ... = . := ^ [] $
syn keyword ozKeyword ! _ ~ + - * / @ <-
syn keyword ozKeyword , !! <= == \= < =< >
syn keyword ozKeyword >= =: \=: <: =<: >: >=: :: :::
syn match ozKeyword /\[\]/

syn match ozOperator /#/
syn match ozOperator /|/

syn region ozString start=/"/ skip=/\\"/ end=/"/
syn match ozAtom /[a-z][A-Za-z0-9]*\>/
syn region ozAtom start=/'/ skip=/\\'/ end=/'/
syn match ozVariable /[A-Z][A-Za-z0-9]*\>/
syn region ozVariable start=/`/ skip=/\\`/ end=/`/
syn match ozCharacter /&[^\\]/
syn match ozNumber /[0-9]/

syn match ozComment /%.*/
syn match ozComment /?/
syn region ozComment start="/\*" end="\*/"

" Basic logic for this adapted/borrowed from c.vim
syn region ozIncluded display contained start=+'+ skip=+\\'+ end=+'+
syn match ozInclude display /^\s*\\insert\>\s*'/ contains=ozIncluded

syn sync fromstart

hi default link ozKeyword Keyword
hi default link ozString Constant
hi default link ozAtom Constant
hi default link ozCharacter Constant
hi default link ozComment Comment
hi default link ozIncluded String
hi default link ozInclude PreProc
hi default link ozVariable Identifier
hi default link ozOperator Operator
hi default link ozNumber Number
