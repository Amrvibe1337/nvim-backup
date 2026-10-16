require "nvchad.options"

-- add yours here!

-- Настройка размера табуляции: 4 пробела
vim.opt.tabstop = 4      -- ширина табуляции в символах
vim.opt.softtabstop = 4  -- размер табуляции при нажатии Tab в режиме вставки
vim.opt.shiftwidth = 4   -- размер отступа при командах >>, <<, ==
vim.opt.expandtab = true -- превращать табуляцию в пробелы

vim.opt.scrolloff = 999
-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
