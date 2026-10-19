return {
  "xiyaowong/transparent.nvim",
  lazy = false,
  config = function()
    require("transparent").setup({
      extra_groups = {
        "NormalFloat",       -- Makes floating windows transparent
        "NeoTreeNormal",     -- Neo-tree active window
        "NeoTreeNormalNC",   -- Neo-tree inactive window
        "NeoTreeWinSeparator",
        "NeoTreeEndOfBuffer",
      },
    })
  end,
}
