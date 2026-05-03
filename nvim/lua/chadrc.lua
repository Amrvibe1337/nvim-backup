-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "nightowl",

	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}

M.ui = {
  tabufline = {
    lazyload = false,   -- ЗАСТАВЛЯЕТ ПАНЕЛЬ С БУФЕРАМИ (ФАЙЛАМИ СВВЕРХУ) ПОКАЗЫВАТЬСЯ ВСЕГДА
  },
}

-- Настройка tree-sitter
M.treesitter = {
  ensure_installed = {
      "python",
      "c",
      "cpp",
      "c_sharp",
      "lua",
      "vim",
      "go"
  },
  highlight = {
    enable = true,
  },
}

M.term = {
  float = {
    row = 0.2,
    col = 0.2,
    width = 0.60,
    height = 0.60,
    border = "single",
  },
}

M.nvdash = {
    load_on_startup = true,
    header = {
      "                      ",
      "  ▄▄         ▄ ▄▄▄▄▄▄▄",
      "▄▀███▄     ▄██ █████▀ ",
      "██▄▀███▄   ███        ",
      "███  ▀███▄ ███        ",
      "███    ▀██ ███        ",
      "███      ▀ ███        ",
      "▀██ █████▄▀█▀▄██████▄ ",
      "  ▀ ▀▀▀▀▀▀▀ ▀▀▀▀▀▀▀▀▀▀",
      "                      ",
      "  Powered By  eovim ",
      "                      ",
    },

    buttons = {
      { txt = "  Find File", keys = "ff", cmd = "Telescope find_files" },
      { txt = "  Recent Files", keys = "fo", cmd = "Telescope oldfiles" },
      { txt = "󰈭  Find Word", keys = "fw", cmd = "Telescope live_grep" },
      { txt = "󱥚  Themes", keys = "th", cmd = ":lua require('nvchad.themes').open()" },
      { txt = "  Mappings", keys = "ch", cmd = "NvCheatsheet" },

      { txt = "─", hl = "NvDashFooter", no_gap = true, rep = true },

      {
        txt = function()
          local stats = require("lazy").stats()
          local ms = math.floor(stats.startuptime) .. " ms"
          return "  Loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms
        end,
        hl = "NvDashFooter",
        no_gap = true,
        content = "fit",
      },

      { txt = "─", hl = "NvDashFooter", no_gap = true, rep = true },
    }
}


return M
