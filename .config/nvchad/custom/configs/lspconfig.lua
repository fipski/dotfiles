local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")

-- if you just want default config for the servers then put them in a table
local servers =
	{ "html", "cssls", "tsserver", "clangd", "pyright", "rust_analyzer", "texlab", "taplo", "zls", "marksman" }

-- add words from spell custom dict to ltex dict
local path_de_dict = vim.fn.stdpath("config") .. "/spell/de.utf-8.add"
local de_dict = {}

for word in io.open(path_de_dict, "r"):lines() do
	table.insert(de_dict, word)
end

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_attach = on_attach,
		capabilities = capabilities,
		root_dir = function()
			return vim.fn.getcwd()
		end,
	})
end

lspconfig["ltex"].setup({
	on_attach = on_attach,
	capabilities = capabilities,
	settings = {
		ltex = {
			language = "de-DE",

			disabledRules = {
				["de-DE"] = { "PROFANITY" },
				["en-US"] = { "PROFANITY" },
				["en-GB"] = { "PROFANITY" },
			},

			dictionary = {
				-- ['en-US'] = words,
				-- ['en-GB'] = words,
				["de-DE"] = de_dict,
			},
		},
	},
})

-- lspconfig.pyright.setup { blabla}
