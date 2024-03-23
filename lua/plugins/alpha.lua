return {
    "goolord/alpha-nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },

    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        vim.api.nvim_set_hl(0, "NeovimDashboardLogo1", { fg = "#8800FF" })

        dashboard.section.header.type = "group"
        dashboard.section.header.val = {
            {
                type = "text",
                val = "   ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
                opts = { hl = "NeovimDashboardLogo1", shrink_margin = false, position = "center" },
            },
            {
                type = "text",
                val = "   ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
                opts = { hl = "NeovimDashboardLogo1", shrink_margin = false, position = "center" },
            },
            {
                type = "text",
                val = "   ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
                opts = { hl = "NeovimDashboardLogo1", shrink_margin = false, position = "center" },
            },
            {
                type = "text",
                val = "   ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
                opts = { hl = "NeovimDashboardLogo1", shrink_margin = false, position = "center" },
            },
            {
                type = "text",
                val = "   ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
                opts = { hl = "NeovimDashboardLogo1", shrink_margin = false, position = "center" },
            },
            {
                type = "text",
                val = "   ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
                opts = { hl = "NeovimDashboardLogo1", shrink_margin = false, position = "center" },
            },
        }
        dashboard.section.buttons.val = {
            dashboard.button("e", "  > New file", ":ene <BAR> startinsert <CR>"),
            dashboard.button("f", "  > Find file", ":cd $HOME/Workspace | Telescope find_files<CR>"),
            dashboard.button("r", "  > Recent", ":Telescope oldfiles<CR>"),
            dashboard.button("s", "  > Settings", ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
            dashboard.button("q", "  > Quit NVIM", ":qa<CR>"),
        }

        alpha.setup(dashboard.opts)

        vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
    end,
}
