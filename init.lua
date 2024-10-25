return {
  -- Configure AstroNvim updates
  updater = {
    remote = "origin", -- remote to use
    channel = "stable", -- "stable" or "nightly"
    version = "latest", -- "latest", tag name, or regex search like "v1.*" to only do updates before v2 (STABLE ONLY)
    branch = "nightly", -- branch name (NIGHTLY ONLY)
    commit = nil, -- commit hash (NIGHTLY ONLY)
    pin_plugins = nil, -- nil, true, false (nil will pin plugins on stable only)
    skip_prompts = false, -- skip prompts about breaking changes
    show_changelog = true, -- show the changelog after performing an update
    auto_quit = false, -- automatically quit the current session after a successful update
    remotes = { -- easily add new remotes to track
      --   ["remote_name"] = "https://remote_url.come/repo.git", -- full remote url
      --   ["remote2"] = "github_user/repo", -- GitHub user/repo shortcut,
      --   ["remote3"] = "github_user", -- GitHub user assume AstroNvim fork
    },
  },
  -- Add colorschemes in the plugins/colorschemes.lua file
  -- colorscheme = "monokai-pro-spectrum",
  colorscheme = "nord",
  -- colorscheme = "monokai-pro-ristretto",
  -- colorscheme = "astrodark",
  -- colorscheme = "tokyonight",
  -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
  -- ### Setting up the nord colorscheme configuration ### 
  -- require("nord").setup({
  --   -- your configuration comes here
  --   -- or leave it empty to use the default settings
  --   transparent = false, -- Enable this to disable setting the background color
  --   terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
  --   diff = { mode = "fg" }, -- enables/disables colorful backgrounds when used in diff mode. values : [bg|fg]
  --   borders = true, -- Enable the border between verticaly split windows visible
  --   errors = { mode = "bg" }, -- Display mode for errors and diagnostics
  --                             -- values : [bg|fg|none]
  --   search = { theme = "vim" }, -- theme for highlighting search results
  --                               -- values : [vim|vscode]
  --   styles = {
  --     -- Style to be applied to different syntax groups
  --     -- Value is any valid attr-list value for `:help nvim_set_hl`
  --     comments = { italic = true },
  --     keywords = {},
  --     functions = {},
  --     variables = {},
  --
  --     -- To customize lualine/bufferline
  --     bufferline = {
  --       current = {},
  --       modified = { italic = true },
  --     },
  --   },
  --
  --   -- colorblind mode
  --   -- see https://github.com/EdenEast/nightfox.nvim#colorblind
  --   -- simulation mode has not been implemented yet.
  --   colorblind = {
  --     enable = false,
  --     preserve_background = false,
  --     severity = {
  --       protan = 0.0,
  --       deutan = 0.0,
  --       tritan = 0.0,
  --     },
  --   },
  --
  --   -- Override the default colors
  --   on_colors = function(colors) end,
  --
  --   --- You can override specific highlights to use other groups or a hex color
  --   --- function will be called with all highlights and the colorScheme table
  --   on_highlights = function(highlights, colors) end,
  -- })



  diagnostics = {
    virtual_text = true,
    underline = true,
  },

  lsp = {
    -- customize lsp formatting options
    formatting = {
      -- control auto formatting on save
      format_on_save = {
        enabled = true, -- enable or disable format on save globally
        allow_filetypes = { -- enable format on save for specified filetypes only
          -- "go",
        },
        ignore_filetypes = { -- disable format on save for specified filetypes
          -- "python",
        },
      },
      disabled = { -- disable formatting capabilities for the listed language servers
        -- disable lua_ls formatting capability if you want to use StyLua to format your lua code
        -- "lua_ls",
      },
      timeout_ms = 1000, -- default format timeout
      -- filter = function(client) -- fully override the default formatting function
      --   return true
      -- end
    },
    -- enable servers that you already have installed without mason
    servers = {
      -- "pyright"
    },
  },

  -- Configure require("lazy").setup() options
  lazy = {
    defaults = { lazy = true },
    performance = {
      rtp = {
        -- customize default disabled vim plugins
        disabled_plugins = { "tohtml", "gzip", "matchit", "zipPlugin", "netrwPlugin", "tarPlugin" },
      },
    },
  },

  -- This function is run last and is a good place to configuring
  -- augroups/autocommands and custom filetypes also this just pure lua so
  -- anything that doesn't fit in the normal config locations above can go here
  polish = function()
    -- Set up custom filetypes
    -- vim.filetype.add {
    --   extension = {
    --     foo = "fooscript",
    --   },
    --   filename = {
    --     ["Foofile"] = "fooscript",
    --   },
    --   pattern = {
    --     ["~/%.config/foo/.*"] = "fooscript",
    --   },
    -- }
  end,
}
