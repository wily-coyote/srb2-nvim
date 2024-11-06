"    srb2-nvim: Provides syntax highlighting for SRB2 files in Neovim
"    Copyright (C) 2023 wily-coyote
"
"    This program is free software: you can redistribute it and/or modify
"    it under the terms of the GNU General Public License as published by
"    the Free Software Foundation, either version 3 of the License, or
"    (at your option) any later version.
"
"    This program is distributed in the hope that it will be useful,
"    but WITHOUT ANY WARRANTY; without even the implied warranty of
"    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
"    GNU General Public License for more details.
"
"    You should have received a copy of the GNU General Public License
"    along with this program.  If not, see <https://www.gnu.org/licenses/>.

syn region socComment start="#"	end="$"
syn match socKey /^\s*[a-zA-Z][a-zA-Z0-9._\-]*/
syn match socAction /\<[A-Z]_[A-Za-z0-9_]\+\>/
syn match socConstant /\<[A-Z]\{1,2\}_[A-Z0-9_]\+\>/
syn match socConstant /\<[A-Z0-9]\+\>/
syn match socConstant /\<sfx_[a-zA-Z0-9]\+\>/
syn match socNumber /[0-9]\{-}\.[0-9]\+\|[0-9]\+/
syn keyword socOperator + - * / % & "|" ^^ ~ ! << >>
syn match socHeader /^\(Clear\|MainCfg\|Object\|State\|Sound\|Sprite2\|SpriteInfo\|Sprite\|Sprite2Info\|Freeslot\|Emblem\|ExtraEmblem\|Unlockable\|ConditionSet\|Wipes\|Character\|Level\|Cutscene\|Scene\|Prompt\|Menu\|HudItem\)\s\+[^\s]\+/

hi link socKey String
hi link socComment Comment
hi link socHeader Statement
hi link socAction Function
hi link socConstant Macro
hi link socNumber Number
hi link socOperator Operator
