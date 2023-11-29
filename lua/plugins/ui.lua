return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skipt = true },
      })

      opts.presets.lsp_doc_border = true
    end,
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      timeout = 10000,
    },
  },
  {
    "akinsho/bufferline.nvim",
    keys = {
      {
        "<Tab>",
        "<Cmd>BufferLineCycleNext<CR>",
        desc = "Next Tap",
      },
      {
        "<S-Tab>",
        "<Cmd>BufferLineCyclePrev<CR>",
        desc = "Prev Tab",
      },
    },
    opts = {
      options = {
        mode = "tabs",
        show_buffer_close_icons = false,
        show_close_icon = false,
      },
    },
  },
  {
    "b0o/incline.nvim",
    dependencies = {
      "rebelot/kanagawa.nvim",
    },
    event = "BufReadPre",
    priority = 1200,
    config = function()
      local colors = require("kanagawa.colors").setup()
      require("incline").setup({
        highlight = {
          groups = {
            inclineNormal = {
              guibg = colors.palette.dragonViolet,
              guifg = colors.palette.dragonBlack4,
            },
            inclineNormalNC = {
              guibg = colors.palette.dragonBlack3,
              guifg = colors.palette.dragonViolet,
            },
          },
        },
        window = {
          margin = {
            vertical = 0,
            horizontal = 1,
          },
        },
        hide = {
          cursorline = true,
        },
        render = function(props)
          local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
          if vim.bo[props.buf].modified then
            filename = "[+]" .. filename
          end

          local icon, color = require("nvim-web-devicons").get_icon_colors(filename)
          return { { icon, guifg = color }, { " " }, { filename } }
        end,
      })
    end,
  },
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      shell = "zsh",
    },
    keys = {
      {
        "<leader>tf",
        "<cmd>ToggleTerm direction=float<CR>",
        desc = "Open Float Terminal",
      },
    },
  },
  {
    "echasnovski/mini.animate",
    event = "VeryLazy",
    opts = function(_, opts)
      opts.scroll = {
        enable = false,
      }
    end,
  },
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = [[
        ███████╗ ██████╗ ██╗   ██╗██╗     ███████╗ ██████╗ ██╗  ██╗
        ██╔════╝██╔═══██╗██║   ██║██║     ██╔════╝██╔═══██╗╚██╗██╔╝
        ███████╗██║   ██║██║   ██║██║     █████╗  ██║   ██║ ╚███╔╝ 
        ╚════██║██║   ██║██║   ██║██║     ██╔══╝  ██║   ██║ ██╔██╗ 
        ███████║╚██████╔╝╚██████╔╝███████╗██║     ╚██████╔╝██╔╝ ██╗
        ╚══════╝ ╚═════╝  ╚═════╝ ╚══════╝╚═╝      ╚═════╝ ╚═╝  ╚═╝
      ]]

      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
    end,
  },
}
