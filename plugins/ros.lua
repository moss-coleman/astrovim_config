return {
    -- {
    --   "thibthib18/ros-nvim",
    --   config = function()
    --     require("ros-nvim").setup {}
    --   end,
    -- },
    --
    {
       'tadachs/ros-nvim',
        config = function()
          require("ros-nvim").setup {only_workspace = true}
        end,
        dependencies = { "nvim-lua/plenary.nvim" },
    },
}
--
--
-- return {
--     {
--       "folke/tokyonight.nvim",
--       config = function()
--         require("tokyonight").setup {}
--       end,
--     },
--     {
--       "loctvl842/monokai-pro.nvim",
--       name = "monokai-pro",
--       config = function()
--         require("monokai-pro").setup {}
--       end,
--     },
--
-- }
