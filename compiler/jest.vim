if exists("current_compiler")
  finish
endif
let current_compiler = "jest"

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet makeprg=jest
CompilerSet errorformat=%.%#\ at\ %f:%l:%c,%.%#\ at\ %.%#(%f:%l:%c)
