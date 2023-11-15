-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
--
--
-- 
vim.cmd([[
  command! -bang -range=% -complete=file -nargs=* W <line1>,<line2>write<bang> <args>
]])

vim.cmd([[
cabb Wq wq
]])

lvim.plugins = {
  { "preservim/nerdtree" },
  { "loctvl842/monokai-pro.nvim"},
  { 'blazkowolf/gruber-darker.nvim'},
  { 'sainnhe/gruvbox-material'},
  { 'Mofiqul/vscode.nvim'},
  { -- This plugin
  "Zeioth/compiler.nvim",
  cmd = {"CompilerOpen", "CompilerToggleResults", "CompilerRedo"},
  dependencies = { "stevearc/overseer.nvim" },
  opts = {},
},
{ -- The task runner we use
  "stevearc/overseer.nvim",
  commit = "19aac0426710c8fc0510e54b7a6466a03a1a7377",
  cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
  opts = {
    task_list = {
      direction = "bottom",
      min_height = 25,
      max_height = 25,
      default_detail = 1,
      bindings = { ["q"] = function() vim.cmd("OverseerClose") end },
    },
  },
},

{
    "kawre/leetcode.nvim",
    build = ":TSUpdate html",
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "nvim-telescope/telescope.nvim",
        "nvim-lua/plenary.nvim", -- required by telescope
        "MunifTanjim/nui.nvim",

        -- optional
        "rcarriga/nvim-notify",
    },
    opts = {
        -- configuration goes here
    },
},

{
  "epwalsh/obsidian.nvim",
  lazy = true,
  event = {
    -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
    "BufReadPre path/to/my-vault/**.md",
    "BufNewFile path/to/my-vault/**.md",
  },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",

    -- see below for full list of optional dependencies 👇
  },
  opts = {
    workspaces = {
      {
        name = "personal",
        path = "~/vaults/personal",
      },
      {
        name = "work",
        path = "~/vaults/work",
      },
    },

    -- see below for full list of options 👇
  },
}
}

lvim.colorscheme = "monokai-pro"

-- ':!compiler ' .. vim.fn.expand('%') .. '<CR>

lvim.keys.normal_mode["<space-c"] = false
lvim.keys.normal_mode["<leader>c"] = false

lvim.keys.normal_mode["<c-b>"] = ":!compiler %<CR>"
lvim.keys.normal_mode[",b"] = ":!compiler %<CR>"
-- lvim.transparent_window = true


