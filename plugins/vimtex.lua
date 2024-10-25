return {

  {
    "lervag/vimtex",
    lazy = false,     -- we don't want to lazy load VimTeX
    -- tag = "v2.15", -- uncomment to pin to a specific release
    init = function()
      -- VimTeX configuration goes here, e.g.
      vim.g.vimtex_view_method = "general"
      -- vim.g.vimtex_view_method = "zathura"
      -- vim.g.vimtex_view_method = "mupdf"
      -- vim.g.vimtex_view_method = "evince"
      -- vim.g.vimtex_view_method = "okular"
      -- Or with a generic interface:
      let g:vimtex_view_general_viewer = 'okular'
      let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
      -- vim.g.vimtex_view_general_viewer = 'okular'
      -- vim.g.vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'

    end

  },

}
