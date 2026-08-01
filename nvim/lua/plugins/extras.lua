return {
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      require("nvim-autopairs").setup({})
    end,
  },

  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {},
  },
}
