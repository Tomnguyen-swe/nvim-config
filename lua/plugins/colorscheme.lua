return {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        -- Use Cyberdream's palette for Neovim's terminal buffers as well.
        terminal_colors = true,
        -- Let the terminal's configured 95% opacity show through.
        transparent = true,
    },
    config = function(_, opts)
        require("cyberdream").setup(opts)
        vim.cmd.colorscheme("cyberdream")

        -- Neovim expresses floating-window opacity as transparency (0-100).
        vim.opt.winblend = 5
        vim.opt.pumblend = 5
    end,
}
