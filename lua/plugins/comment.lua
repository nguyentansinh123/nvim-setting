return {
  {
    "numToStr/Comment.nvim",
    event = "VeryLazy", -- loads after startup
    config = function()
      require("Comment").setup()
    end,
  },
}
