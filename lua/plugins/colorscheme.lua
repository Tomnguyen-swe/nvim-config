return {
  "scottmckendry/cyberdream.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    variant = "default",
    transparent = true,
    terminal_colors = true,
  },
  config = function(_, opts)
    vim.opt.termguicolors = true
    vim.opt.background = "dark"
    vim.opt.winblend = 10
    vim.opt.pumblend = 10

    require("cyberdream").setup(opts)
    vim.cmd.colorscheme("cyberdream")
  end,
}
