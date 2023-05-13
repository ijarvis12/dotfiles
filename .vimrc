" THIS .VIMRC IS (PARTIALLY) BROUGHT TO YOU BY:
" https://github.com/changemewtf/no_plugins



" BASIC SETUP:

" No vi keybindings
set nocompatible

" Enable mouse support
set mouse=a
set mousehide

" Set line numbering
set number

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Enable syntax colors and netrw
syntax enable
filetype plugin indent on

" Set ruler, format, and update time interval
set ruler
set rulerformat=%55(%{strftime('%a\ %b\ %e\ %I:%M\ %p')}\ %5l,%-6(%c%V%)\ %P%)
let timer = timer_start(4000, 'UpdateStatusBar',{'repeat':-1})
function! UpdateStatusBar(timer)
  execute 'let &ro = &ro'
endfunction

" Set terminal normal mode keybinding, for dwm.vim ease of window management
tmap <Esc> <C-W>N



" FINDING FILES:

" Search subfolders
" Provides tab-completion for file-related tasks
set path+=**

" Display all matching files when tab complete
set wildmenu

" NOW WE CAN:
" - Hit tab to :find by partial match
" - Use * to make it fuzzy

" THINGS TO CONSIDER:
" - :b <file> lets you autocomplete any open buffer



" FILE BROWSING:

" Tweaks for browsing
let g:netrw_liststyle = 3
"let g:netrw_browse_split = 2
"let g:netrw_altv = 1

" NOW WE CAN:
" - :edit <folder> to open a file browser
" - <CR>/v/t to open in an h-split/v-split/tab
" - check |netrw-browse-maps| for more mappings



" TAG JUMPING:

" Create the 'tags' file (may need to install ctags first)
command! MakeTags !ctags -R .

" NOW WE CAN:
" - Use ^] to jump to tag under cursor
" - Use g^] for ambiguous tags
" - Use ^t to jump back up the tag stack

" THINGS TO CONSIDER:
" - This doesn't help if you want a visual list of tags



" AUTOCOMPLETE:

" The good stuff in documented in |ins-completion|

" HIGHLIGHTS:
" - ^x^n for JUST this file
" - ^x^f for filenames (works with our path trick!)
" - ^x^] for tags only
" - ^n for anything specified by the 'complete' option

" NOW WE CAN:
" - Use ^n and ^p to go back and forth in the suggestion list



" SNIPPETS:

" Read an empty HTML template and move cursor to title
"nnoremap ,html :-read $HOME/.vim/.skeleton.html<CR>3jwf>a

" NOW WE CAN:
" - Take over the world!
"   (with much fewer keystrokes)



" BUILD INTEGRATION:

set shell=bash
autocmd FileType python set makeprg=pylint\ %\ &&\ python3\ %
autocmd FileType haskell set makeprg=hint\ %\ &&\ ghc\ %
autocmd FileType bash compiler bash

" Steal Mr. Bradley's formatter & add it to our spec_helper
" http://philipbradley.net/posts/rspec-into-vim-with-quickfix

" Configure the 'make' command to run RSpec
"set makeprg=bundle\ exec\ rspec\ -f\ QuickfixFormatter

" NOW WE CAN:
" - Run :make to run makeprg
" - :cl to list errors
" - :cc# to jump to error by number
" - :cn and :cp to navigate forward and back
