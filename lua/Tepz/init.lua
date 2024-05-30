require("Tepz.remap")
require("Tepz.lazy")
require("Tepz.plugins.treesitter")
require("Tepz.plugins.mason-lsp")

vim.o.number = true

-- Transparent command
local Transparent = true
local theme = "gruvbox"

vim.cmd("colorscheme " .. theme)
function ToggleBackground()
    if Transparent == true then
        vim.cmd('highlight Normal guibg=none')
        Transparent = false
    else
        vim.cmd('colorscheme ' .. theme)
        Transparent = true
    end
end

vim.cmd('autocmd VimEnter * lua ToggleBackground()')
vim.cmd("command! Tp lua ToggleBackground()")
