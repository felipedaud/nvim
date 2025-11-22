
-- Buffers
local function close_current_buffer()
    local buffers = vim.fn.getbufinfo({ buflisted = 1 })

    if #buffers > 1 then
        vim.cmd("bnext")
        vim.cmd("bd #")
    else
        vim.cmd("confirm qa")
    end
end


vim.keymap.set("n", "<Tab>", ":bnext<CR>")
vim.keymap.set("n", "<S-Tab>", ":bprev<CR>")
vim.keymap.set("n", "<leader>w", function() close_current_buffer() end)






-- Tabs
local function goto_or_create_tab(n)
    local total_tabs = vim.fn.tabpagenr("$")

    if total_tabs < n then
        vim.cmd("tabnew")
    end

    vim.cmd("tabnext " .. n)
end

vim.keymap.set("n", "<leader>1", function() goto_or_create_tab(1) end)
vim.keymap.set("n", "<leader>2", function() goto_or_create_tab(2) end)
vim.keymap.set("n", "<leader>3", function() goto_or_create_tab(3) end)
