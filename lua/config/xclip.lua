-- Función para copiar al portapapeles
local function xclip_copy_to_clipboard()
  local register_content = vim.fn.getreg('"')
  vim.fn.system("xclip -i -selection clipboard", register_content)
end

-- Función para pegar desde el portapapeles
local function xclip_paste_from_clipboard()
  local result = vim.fn.system("xclip -o -selection clipboard")
  vim.fn.setreg("a", result)
  vim.cmd('normal! "ap')
end

-- Función para copiar (buffer, util para tmux)
local function xclip_copy()
  local register_content = vim.fn.getreg('"')
  vim.fn.system("xclip -i", register_content)
end

-- Función para pegar (buffer, util para tmux)
local function xclip_paste()
  local result = vim.fn.system("xclip -o")
  vim.fn.setreg("a", result)
  vim.cmd('normal! "ap')
end

-- Mapeo de teclas
vim.keymap.set("n", "<leader>Y", xclip_copy_to_clipboard,    {desc = "b -> xclip clipboard"})
vim.keymap.set("n", "<leader>P", xclip_paste_from_clipboard, {desc = "b <- xclip clipboard"})
vim.keymap.set("n", "<leader>y", xclip_copy,                 {desc = "b -> xclip buffer"})
vim.keymap.set("n", "<leader>p", xclip_paste,                {desc = "b <- xclip buffer"})
