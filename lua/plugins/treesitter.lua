return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "astro",
        "bash",
        "c",
        "cmake",
        "cpp",
        "css",
        "csv",
        "dockerfile",
        "elixir",
        "gitattributes",
        "gitignore",
        "glsl",
        "go",
        "gomod",
        "gosum",
        "gowork",
        "graphql",
        "hcl",
        "html",
        "ini",
        "javascript",
        "json",
        "kdl",
        "llvm",
        "lua",
        "make",
        "markdown",
        "ninja",
        "prisma",
        "proto",
        "python",
        "r",
        "regex",
        "robot",
        "rust",
        "scss",
        "sql",
        "svelte",
        "terraform",
        "toml",
        "tsx",
        "typescript",
        "vue",
        "wing",
        "xml",
        "yaml",
        "yuck",
        "zig",
        "vim",
        "http",
      },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)

      -- MDX
      vim.filetype.add({
        extension = {
          mdx = "mdx",
        },
      })

      vim.treesitter.language.register("markdown", "mdx")
    end,
  },
}
