-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	-- Telescope
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- Color Schemes
	use("EdenEast/nightfox.nvim")

	-- Status bar
	use("itchyny/lightline.vim")

	-- Neovim startup screen
	use({ "goolord/alpha-nvim" })

	-- Treesitter
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })

	-- Treesitter playground
	use("nvim-treesitter/playground")

	-- Harpoon
	use("nvim-lua/plenary.nvim")
	use("ThePrimeagen/harpoon")

	-- Nvim Tree
	use("nvim-tree/nvim-tree.lua")
	use("nvim-tree/nvim-web-devicons")

	-- Undotree
	use("mbbill/undotree")

	-- Git Fugitive
	use("tpope/vim-fugitive")

	-- Easy commenting
	use("numToStr/Comment.nvim")

	-- Highlights color codes
	use("norcalli/nvim-colorizer.lua")

	-- Which key
	-- Shows popup with keymaps
	use({
		"folke/which-key.nvim",
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
	})

	-- Git signs
	use("lewis6991/gitsigns.nvim")

	-- Indent Blankline
	use("lukas-reineke/indent-blankline.nvim")

	-- Auto Pairs
	use("windwp/nvim-autopairs")

	-- Auto HTML Tags
	use("windwp/nvim-ts-autotag")

	-- Vim Surround
	use("tpope/vim-surround")

	-- Lua Snip
	use({
		"L3MON4D3/LuaSnip",
		-- follow latest release.
		tag = "v1.0.0", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
		-- install jsregexp (optional!:).
		run = "make install_jsregexp",
	})

	-- GitHub Copilot
	use("github/copilot.vim")

	-- Null-ls
	use("jose-elias-alvarez/null-ls.nvim")

	-- LSP
	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v1.x",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" },
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "saadparwaiz1/cmp_luasnip" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-nvim-lua" },

			-- Snippets
			{ "L3MON4D3/LuaSnip" },
			{ "rafamadriz/friendly-snippets" },
		},
	})


    -- CMP
    use ({
        "hrsh7th/nvim-cmp",
        requires = {
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-nvim-lua",
            "L3MON4D3/LuaSnip",
            "onsails/lspkind-nvim",
        }
    })
end)
