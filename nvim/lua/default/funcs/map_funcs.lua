-- helper functions for vim map calls

-- different types of vim modes
local normal = "n"
local visual_select = "v"
local visual = "x"
local operator_pending = "o"
local insert = "i"
local command = "c"

-- map functions

function map(mode, shortcut, command, silent)
  vim.api.nvim_set_keymap(mode, shortcut, command,
    {noremap = false, silent = silent})
end

function nmap(shortcut, command)
  map(normal, shortcut, command, false)
end

function vmap(shortcut, command)
  map(visual, shortcut, command, false)
end

-- noremap functions

function noremap(mode, shortcut, command, silent)
  vim.api.nvim_set_keymap(mode, shortcut, command,
    { noremap = true, silent = silent})
end

function nnoremap(shortcut, command)
  noremap(normal, shortcut, command, false)
end

function inoremap(shortcut, command)
  noremap(insert, shortcut, command, false)
end

function vnoremap(shortcut, command)
  noremap(visual, shortcut, command, false)
end

function nnoremap_silent(shortcut, command)
  noremap(normal, shortcut, command, true)
end

function inoremap_silent(shortcut, command)
  noremap(insert, shortcut, command, true)
end

function vnoremap_silent(shortcut, command)
  noremap(visual, shortcut, command, true)
end
