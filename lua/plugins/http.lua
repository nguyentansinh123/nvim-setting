
return {
  "heilgar/nvim-http-client",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",           -- optional for autocompletion
    "nvim-telescope/telescope.nvim", -- optional for env selection
  },
  event = "VeryLazy",
  ft = { "http", "rest" },
  config = function()
    require("http_client").setup({
      default_env_file = '.env.json',
      request_timeout = 30000,
      split_direction = "right",
      create_keybindings = true,
      profiling = {
        enabled = true,
        show_in_response = true,
        detailed_metrics = true,
      },
      keybindings = {
        select_env_file = "<leader>hf",
        set_env = "<leader>he",
        run_request = "<leader>hr",
        stop_request = "<leader>hx",
        toggle_verbose = "<leader>hv",
        toggle_profiling = "<leader>hp",
        dry_run = "<leader>hd",
        copy_curl = "<leader>hc",
        save_response = "<leader>hs",
      },
    })

    -- Enable Telescope integration if installed
    if pcall(require, "telescope") then
      require("telescope").load_extension("http_client")
    end
  end
}
