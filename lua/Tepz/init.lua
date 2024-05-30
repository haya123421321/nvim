require("Tepz.remap")
require("Tepz.lazy")
require("Tepz.plugins.treesitter")
require("Tepz.plugins.mason-lsp")

vim.o.number = true
local theme = "gruvbox"
vim.cmd("colorscheme " .. theme)

-- Transparent command
local Transparent = true
function ToggleBackground()
    if Transparent == false then
        vim.cmd('highlight Normal guibg=none')
        Transparent = true
    else
        vim.cmd('colorscheme ' .. theme)
        Transparent = false
    end
end

vim.cmd('autocmd VimEnter * lua ToggleBackground()')
vim.cmd("command! Tp lua ToggleBackground()")
