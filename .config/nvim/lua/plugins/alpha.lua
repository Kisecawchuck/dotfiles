return {
    'goolord/alpha-nvim',

    dependencies = { 'nvim-tree/nvim-web-devicons' },

    config = function ()
        local startify = require("alpha.themes.startify")
        local dashboard = require("alpha.themes.dashboard")
        startify.file_icons.provider = "devicons"
        require("alpha").setup(
            startify.config
        )
        require'alpha'.setup(require'alpha.themes.dashboard'.config)
        dashboard.section.header.val = {


            [[  ^  ^  ^   ^☆ ★ ☆ ___I_☆ ★ ☆ ^  ^   ^  ^  ^   ^  ^ ]],
            [[ /|\/|\/|\ /|\ ★☆ /\-_--\ ☆ ★/|\/|\ /|\/|\/|\ /|\/|\ ]],
            [[ /|\/|\/|\ /|\ ★ /  \_-__\☆ ★/|\/|\ /|\/|\/|\ /|\/|\ ]],
            [[ /|\/|\/|\ /|\ 󰻀 |[]| [] | 󰻀 /|\/|\ /|\/|\/|\ /|\/|\ ]],
        }
        dashboard.section.buttons.val = {
            dashboard.button("e", " New file", ":ene <BAR> startinsert <CR>"),
            dashboard.button("f", "󰍉  Find file", ":lua require('telescope.builtin').find_files() <CR>"),
            dashboard.button("t", "  Browse cwd", ":NvimTreeOpen<CR>"),
            dashboard.button("r", "  Browse src", ":e ~/.local/src/<CR>"),
            dashboard.button("s", "󰯂  Browse scripts", ":e ~/scripts/<CR>"),
            dashboard.button("c", "  Config", ":e ~/.config/nvim/<CR>"),
            dashboard.button("m", "  Mappings", ":e ~/.config/nvim/lua/caesar/remap.lua<CR>"),
            dashboard.button("p", "  Plugins", ":Lazy<CR>"),
            dashboard.button("q", "󰅙  Quit", ":q!<CR>"),
        }
    end
}
