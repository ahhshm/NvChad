local fn = vim.fn
local hl = require("core.utils").hl

local group_lsp = vim.api.nvim_create_augroup("_lsp", { clear = true })
local group_git = vim.api.nvim_create_augroup("_git", { clear = true })

-- format before save
vim.api.nvim_create_autocmd("BufWritePre", {
  callback = function()
    vim.lsp.buf.formatting_sync()
  end,
  group = group_lsp,
})

-- enable spellcheck in gitcommit files
vim.api.nvim_create_autocmd("FileType", {
  callback = function()
    vim.opt_local.spell = true
    hl("SpellCap", {})
  end,
  pattern = "gitcommit",
  group = group_git,
})

-- highlight yanked text
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank({ higroup = "Visual", timeout = 200 })
  end,
})

-- don't show any numbers inside terminals
vim.api.nvim_create_autocmd("TermOpen", {
  pattern = "term://*",
  callback = function()
    vim.opt_local.number = false
    vim.opt_local.relativenumber = false
    vim.cmd([[ setfiletype terminal ]])
  end,
})

-- Open a file from its last left off position
vim.api.nvim_create_autocmd("BufReadPost", {
  callback = function()
    if not fn.expand("%:p"):match("m/.git/") and fn.line("'\"") > 1 and fn.line("'\"") <= fn.line("$") then
      vim.cmd("normal! g'\"")
    end
  end,
})

-- File extension specific tabbing
vim.api.nvim_create_autocmd("Filetype", {
  pattern = "python",
  callback = function()
    vim.opt_local.expandtab = true
    vim.opt_local.tabstop = 4
    vim.opt_local.shiftwidth = 4
    vim.opt_local.softtabstop = 4
  end,
})

-- uncomment this if you want to open nvim with a dir
vim.api.nvim_create_autocmd("BufEnter", { command = [[if &buftype != "terminal" | lcd %:p:h | endif]] })

-- Use relative & absolute line numbers in 'n' & 'i' modes respectively
vim.api.nvim_create_autocmd("InsertEnter", {
  callback = function()
    vim.opt.relativenumber = false
  end,
})
vim.api.nvim_create_autocmd("InsertLeave", {
  callback = function()
    vim.opt.relativenumber = true
  end,
})

-- -- underline the word under cursor
-- vim.api.nvim_create_autocmd("VimEnter", {
--   callback = function()
--     hl("CursorWord", { underline = true })
--     match_cursorword()
--   end,
-- })
-- vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, {
--   callback = function()
--     match_cursorword()
--   end,
-- })
