local function map(m, k, v)
    vim.keymap.set(m, k, v, { silent = true })
end


vim.api.nvim_create_autocmd("TextYankPost", {
    group = num_au,
    callback = function()
        vim.highlight.on_yank({ higroup = "Visual", timeout = 120 })
    end,
})


local ok, _ = pcall(vim.cmd, "colorscheme torte")
--local ok, _ = pcall(vim.cmd, "colorscheme lunaperche")

vim.o.laststatus = 0

vim.o.number = 1
vim.o.relativenumber = 1

-- vim.o.set clipboard = unnamedplus

-- local explorer_state = 0
function ToggleExplorer()
    vim.cmd('Lexplore')
    vim.cmd('vertical resize 30')
end

vim.keymap.set('n', '<space>e', ':lua ToggleExplorer()<CR>', { noremap = true, silent = true })


function ExecuteVimCommands()
    vim.cmd('vertical resize 30')
    vim.cmd('Lxplore')
end

vim.api.nvim_set_keymap('n', '<C-O>', ':lua ExecuteVimCommands()<CR>', { noremap = true, silent = true })
