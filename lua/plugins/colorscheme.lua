return {
  "rebelot/kanagawa.nvim",
  lazy = true,
  priority = 1000,
  opts = function()
    return {
      compile = false,
      undercurls = true,
      commentStyle = { italic = true },
      transparent = false,
      terminalColors = true,
    }
  end,
}
