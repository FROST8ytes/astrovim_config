return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  { "sainnhe/gruvbox-material" },
  { "simrat39/rust-tools.nvim" },
  { "p00f/clangd_extensions.nvim" },
  { "jose-elias-alvarez/typescript.nvim" },
  -- { "kdheepak/lazygit.nvim" },

  -- TODO: test
  -- WARN: test
  -- FIX: test
  -- PERF: test
  -- HACK: test
  -- NOTE: test
  -- FIXME: test
  -- BUG: test
  -- ISSUE: test
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      keywords = {
        TODO = { color = "#c8cacb" },
      },
    },
    event = "User AstroFile",
    cmd = { "TodoQuickFix", "TodoLocList", "TodoTrouble", "TodoTelescope" },
    keys = {
      { "<leader>T", "<cmd>TodoTelescope<cr>", desc = "Open TODOs telescope" },
    },
  },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
    event = "User AstroFile",
    cmd = { "Trouble", "TroubleClose", "TroubleRefresh", "TroubleToggle" },
  },
  {
    "xiyaowong/transparent.nvim",
    opts = {},
    lazy = false,
  },
}
