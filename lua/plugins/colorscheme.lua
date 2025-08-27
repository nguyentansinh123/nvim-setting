return {
  {
    "navarasu/onedark.nvim",
    priority = 1000,
    opts = {
      style = "deep", -- options: dark, darker, cool, deep, warm, warmer, light
      transparent = true, -- makes the background transparent
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },
}
