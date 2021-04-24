if has('unix')
  let vimHome = '~/.vim'
elseif has('win32')
  let vimHome = $USERPROFILE . "\\vimfiles"
endif
exe 'set runtimepath^=' . vimHome
exe 'set runtimepath+=' . vimHome . '/after'
let &packpath = &runtimepath
if has('unix')
  source ~/.vimrc
elseif has('win32')
  source ~/_vimrc
endif
