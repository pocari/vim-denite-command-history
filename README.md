# vim-denite-gists
[![wercker status](https://app.wercker.com/status/4957015a009e5636c40102655df63c8b/s/master "wercker status")](https://app.wercker.com/project/byKey/4957015a009e5636c40102655df63c8b)

`vim-denite-command-history` is a source for [denite.nvim](https://github.com/Shougo/denite.nvim).

This plugin can execute command from ':history' contents.

## depends

This plugin depends on:

* [denite.nvim](https://github.com/Shougo/denite.nvim)

## install

For [dein.vim](https://github.com/Shougo/dein.vim)

   ```vim
   call dein#add('Shougo/denite.nvim')
   call dein#add('pocari/vim-denite-command-history')
   ```

## usage

`:Denite command_history`

## actions
| action           | description|
|------------------|------------|
|execute(default)  | execute selected command |
|edit_and_execute  | edit selected command and execute |

if you want change default action

```vim
:Denite command_history -default-action=edit_and_execute
```

## custom#vars
example

```vim
" ignore command regexp. (note: regexp is python3's regexp)
call denite#custom#var('command_history', 'ignore_command_regexp', [
  '^q'
])

```
