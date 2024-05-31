require("Tepz.remap")
require("Tepz.lazy")
require("Tepz.plugins.treesitter")
require("Tepz.plugins.lsp")
require("Tepz.plugins.telescope")

vim.o.number = true
vim.cmd('set guicursor=i:ver25-iCursor')

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

