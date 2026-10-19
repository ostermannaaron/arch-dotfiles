return {
    "saghen/blink.cmp",
    -- Download pre-built Rust binaries for releases
    version = "*",
    dependencies = {
        "saghen/blink.lib",
        "rafamadriz/friendly-snippets",
    },

    opts = {
        -- your blink.cmp options
    },

    config = function(_, opts)
        require("blink.cmp").setup(opts)

        vim.api.nvim_set_hl(0, "BlinkCmpMenu", {
            bg = "NONE",
        })

        vim.api.nvim_set_hl(0, "BlinkCmpMenuBorder", {
            bg = "NONE",
        })

        vim.api.nvim_set_hl(0, "BlinkCmpDoc", {
            bg = "NONE",
        })

        vim.api.nvim_set_hl(0, "BlinkCmpDocBorder", {
            bg = "NONE",
        })
    end,
}
