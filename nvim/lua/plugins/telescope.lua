return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local telescope = require("telescope")
    local builtin = require("telescope.builtin")

    telescope.setup({
      defaults = {
        prompt_prefix = "   ",
        selection_caret = " ❯ ",
        entry_prefix = "   ",
        sorting_strategy = "ascending",
        layout_config = {
          horizontal = {
            prompt_position = "top",
            preview_width = 0.55,
          },
        },
      },
    })

    vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find Files" })
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Search Text (Grep)" })
    vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find Active Buffers" })
    vim.keymap.set("n", "<leader>fo", builtin.oldfiles, { desc = "Recent Files" })
    vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Search Help" })
  end,
}
