return {
  {
    "pocco81/auto-save.nvim",
    event = "BufReadPost",
    config = function()
      require("auto-save").setup({
        enabled = true, -- start auto-save when loaded
        execution_message = {
          message = function()
            return ("💾 AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"))
          end,
          dim = 0.18,
          cleaning_interval = 1250,
        },
        trigger_events = { "InsertLeave", "TextChanged" }, -- auto save on insert leave or text change
        debounce_delay = 1200,
      })

      -- optional: map <leader>n to toggle autosave
      vim.keymap.set("n", "<leader>n", ":ASToggle<CR>", { desc = "Toggle AutoSave" })
    end,
  },
}
