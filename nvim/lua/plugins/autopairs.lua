return {
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  opts = {
    check_ts = true, -- Enable Treesitter integration to prevent pairs inside strings/comments
    disable_filetype = { "TelescopePrompt", "spectre_panel" },
    fast_wrap = {},  -- Alt+e to wrap target word with pair
  },
  config = function(_, opts)
    local npairs = require("nvim-autopairs")
    npairs.setup(opts)

    -- Integrate with nvim-cmp (if you use nvim-cmp for autocompletion)
    local cmp_status, cmp = pcall(require, "cmp")
    if cmp_status then
      local cmp_autopairs = require("nvim-autopairs.completion.cmp")
      cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
    end
  end,
}
