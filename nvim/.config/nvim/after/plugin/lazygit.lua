-- local lg = require("telescope").extensions.lazygit.lazygit()
-- -- local lazygit = Terminal:new({
--     cmd = lg_cmd,
--     count = 5,
--     direction = "float",
--     float_opts = {
--         border = "double",
--         width = function() return vim.o.columns end,
--         height = function() return vim.o.lines end
--     },
--     -- function to run on opening the terminal
--     on_open = function(term)
--         vim.cmd("startinsert!")
--         vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>",
--                                     {noremap = true, silent = true})
--     end
-- })
--
-- function Edit(fn, line_number)
--     local edit_cmd = string.format(":e %s", fn)
--     if line_number ~= nil then
--         edit_cmd = string.format(":e +%d %s", line_number, fn)
--     end
--     vim.cmd(edit_cmd)
-- end
--
-- function Lazygit_toggle() lazygit:toggle() end

vim.keymap.set("n", "<leader>go", "<cmd>LazyGit<CR>", {silent = true})
