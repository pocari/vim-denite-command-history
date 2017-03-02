function! command_history#util#histories() abort
  let out = ''
  redir => out
  silent! history
  redir END

  let commands = []

  for line in reverse(split(out, '\n'))
    " '    #  command' の形式になっている文字列を '#\ncommand' に変換した上で
    " \nで分割して、履歴番号とコマンドに分ける
    call add(commands, split(substitute(line, '^>\? \+\(#\|[0-9]\+\) *\(.*\)', '\1\n\2', ''), '\n'))
  endfor

  return commands
endfunction
