---@type MappingsTable
local M = {}
M.disabled = {
  n = {
    ["<leader>n"] = { "<cmd> set nu! <CR>", "Toggle line number" },
    ["<leader>rn"] = { "<cmd> set nu! <CR>", "Toggle line number" },
    ["<leader>/"] = "",
    ["<leader>wk"] = "",
    -- ["gD"] = {
    --   function()
    --     vim.lsp.buf.declaration()
    --   end,
    --   "lsp declaration",
    -- },
    --
    -- ["gd"] = {
    --   function()
    --     vim.lsp.buf.definition()
    --   end,
    --   "lsp definition",
    -- },
    --
    -- ["K"] = {
    --   function()
    --     vim.lsp.buf.hover()
    --   end,
    --   "lsp hover",
    -- },
    --
    -- ["gi"] = {
    --   function()
    --     vim.lsp.buf.implementation()
    --   end,
    --   "lsp implementation",
    -- },

    ["<leader>ls"] = {
      function()
        vim.lsp.buf.signature_help()
      end,
      "lsp signature_help",
    },

    ["<leader>D"] = {
      function()
        vim.lsp.buf.type_definition()
      end,
      "lsp definition type",
    },

    ["<leader>ra"] = {
      function()
        require("nvchad.renamer").open()
      end,
      "LSP rename",
    },

    ["<leader>ca"] = {
      function()
        vim.lsp.buf.code_action()
      end,
      "lsp code_action",
    },

    -- ["gr"] = {
    --   function()
    --     vim.lsp.buf.references()
    --   end,
    --   "lsp references",
    -- },

    ["<leader>f"] = {
      function()
        vim.diagnostic.open_float()
      end,
      "floating diagnostic",
    },

    -- ["[d"] = {
    --   function()
    --     vim.diagnostic.goto_prev()
    --   end,
    --   "goto prev",
    -- },
    --
    -- ["]d"] = {
    --   function()
    --     vim.diagnostic.goto_next()
    --   end,
    --   "goto_next",
    -- },

    ["<leader>q"] = {
      function()
        vim.diagnostic.setloclist()
      end,
      "diagnostic setloclist",
    },

    ["<leader>fm"] = {
      function()
        vim.lsp.buf.format { async = true }
      end,
      "lsp formatting",
    },

    ["<leader>wa"] = {
      function()
        vim.lsp.buf.add_workspace_folder()
      end,
      "add workspace folder",
    },

    ["<leader>wr"] = {
      function()
        vim.lsp.buf.remove_workspace_folder()
      end,
      "remove workspace folder",
    },

    ["<leader>wl"] = {
      function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
      end,
      "list workspace folders",
    },
  },
  v = {
    ["<leader>/"] = "",
  },
}
M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
  -- x = {
  --   ["<leader>p"] = { "\"_dP"}
  -- }
}

M.tabufline = {
  plugin = true,

  n = {
    -- cycle through buffers
    ["gt"] = {
      function()
        require("nvchad_ui.tabufline").tabuflineNext()
      end,
      "goto next buffer",
    },
  },
}
M.comment = {
  plugin = true,

  -- toggle comment in both modes
  n = {
    ["gc"] = {
      function()
        require("Comment.api").toggle.linewise.current()
      end,
      "toggle comment",
    },
  },

  v = {
    ["gc"] = {
      "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
      "toggle comment",
    },
  },
}
M.telescope = {
  plugin = true,

  n = {
    -- find
    ["<leader>bm"] = { "<cmd> Telescope marks <CR>", "Telescope marks" },
    ["<leader>km"] = { "<cmd> Telescope keymaps<CR>", "Telescope keymaps" },
  },
}
M.whichkey = {
  plugin = true,

  n = {
    -- ["<leader>wK"] = {
    --   function()
    --     vim.cmd "WhichKey"
    --   end,
    --   "which-key all keymaps",
    -- },
    -- ["<leader>wk"] = {
    --   function()
    --     local input = vim.fn.input "WhichKey: "
    --     vim.cmd("WhichKey " .. input)
    --   end,
    --   "which-key query lookup",
    -- },
  },
}
M.lspconfig = {
  plugin = true,

  n = {
    -- See `<cmd> :help vim.lsp.*` for documentation on any of the below functions
    ["<leader>ld"] = {
      function()
        vim.lsp.buf.declaration()
      end,
      "lsp declaration",
    },

    ["gd"] = {
      function()
        vim.lsp.buf.definition()
      end,
      "lsp definition",
    },

    ["K"] = {
      function()
        vim.lsp.buf.hover()
      end,
      "lsp hover",
    },

    ["gi"] = {
      function()
        vim.lsp.buf.implementation()
      end,
      "lsp implementation",
    },

    ["<leader>ls"] = {
      function()
        vim.lsp.buf.signature_help()
      end,
      "lsp signature_help",
    },

    ["<leader>lD"] = {
      function()
        vim.lsp.buf.type_definition()
      end,
      "lsp definition type",
    },

    ["<leader>lr"] = {
      function()
        require("nvchad.renamer").open()
      end,
      "lsp rename",
    },

    ["<leader>lc"] = {
      function()
        vim.lsp.buf.code_action()
      end,
      "lsp code_action",
    },

    ["<leader>lR"] = {
      function()
        vim.lsp.buf.references()
      end,
      "lsp references",
    },

    ["<leader>lf"] = {
      function()
        vim.diagnostic.open_float()
      end,
      "floating diagnostic",
    },

    ["<leader>lN"] = {
      function()
        vim.diagnostic.goto_prev()
      end,
      "goto prev",
    },

    ["<leader>ln"] = {
      function()
        vim.diagnostic.goto_next()
      end,
      "goto_next",
    },

    ["<leader>lq"] = {
      function()
        vim.diagnostic.setloclist()
      end,
      "diagnostic setloclist",
    },

    ["<leader>l="] = {
      function()
        vim.lsp.buf.format { async = true }
      end,
      "lsp formatting",
    },

    ["<leader>l+"] = {
      function()
        vim.lsp.buf.add_workspace_folder()
      end,
      "add workspace folder",
    },

    ["<leader>l-"] = {
      function()
        vim.lsp.buf.remove_workspace_folder()
      end,
      "remove workspace folder",
    },

    ["<leader>ll"] = {
      function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
      end,
      "list workspace folders",
    },
  }
}

M.nvterm = {
  plugin = true,

  t = {
    -- toggle in terminal mode
    ["<A-cr>"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "Toggle horizontal term",
    },
  },

  n = {
    -- toggle in normal mode
    ["<A-cr>"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "Toggle horizontal term",
    },
  },
}


return M
