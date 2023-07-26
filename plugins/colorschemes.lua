return {
    {
      "folke/tokyonight.nvim",
      config = function()
        require("tokyonight").setup {}
      end,
    },
    {
      "loctvl842/monokai-pro.nvim",
      name = "monokai-pro",
      config = function()
        require("monokai-pro").setup {}
      end,
    },

}
