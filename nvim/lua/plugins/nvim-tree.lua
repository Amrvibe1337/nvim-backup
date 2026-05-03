return {
  "nvim-tree/nvim-tree.lua",
  opts = {
    filters = {
      dotfiles = false,   -- показывать файлы и папки, начинающиеся с точки
    },
    git = {
      ignore=false,
    },
  },
}
