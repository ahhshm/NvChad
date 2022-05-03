-- uncomment this if you want to open nvim with a dir
-- vim.cmd [[ autocmd BufEnter * if &buftype != "terminal" | lcd %:p:h | endif ]]

-- Use relative & absolute line numbers in 'n' & 'i' modes respectively
-- vim.cmd[[ au InsertEnter * set norelativenumber ]]
-- vim.cmd[[ au InsertLeave * set relativenumber ]]

-- Open a file from its last left off position
-- vim.cmd [[ au BufReadPost * if expand('%:p') !~# '\m/\.git/' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif ]]
-- File extension specific tabbing
<<<<<<< Updated upstream
-- vim.cmd [[ autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4 ]]
=======
-- autocmd("Filetype", {
--    pattern = "python",
--    callback = function()
--       vim.opt_local.expandtab = true
--       vim.opt_local.tabstop = 4
--       vim.opt_local.shiftwidth = 4
--       vim.opt_local.softtabstop = 4
--    end,
-- })

-- Highlight yanked text
-- autocmd("TextYankPost", {
--    callback = function()
--       vim.highlight.on_yank { higroup = "Visual", timeout = 200 }
--    end,
-- })
>>>>>>> Stashed changes
