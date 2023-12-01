return{
  "ahmedkhalf/project.nvim",
  event = "VeryLazy",
  opts = {
    detection_methods = {"pattern", "lsp"},
    patterns = {".git"},
  },
  config = function(_, opts)
    require("project_nvim").setup(opts)
    require('telescope').load_extension('projects')
  end,
  keys = {
    { "<leader>p", "<Cmd>Telescope projects<CR>", desc = "Projects" },
  },
}
