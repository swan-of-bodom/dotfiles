"IMPORTANT - Autosaves on every file update
autocmd TextChanged,TextChangedI * update

if exists("current_compiler")
  finish
endif

