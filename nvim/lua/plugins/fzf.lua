return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
	  require("fzf-lua").setup({})
  end,
  keys = {
	  { "<leader>ff", "<cmd>FzfLua files<CR>", desc = "Find Files" },
  },
}
