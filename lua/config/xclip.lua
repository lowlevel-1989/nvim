-- Función para copiar al portapapeles
function xclip_copy_to_clipboard()
  local register_content = vim.fn.getreg('"')
  vim.fn.system("xclip -i -selection clipboard", register_content)
end

-- Función para pegar desde el portapapeles
function xclip_paste_from_clipboard()
  local result = vim.fn.system("xclip -o -selection clipboard")
  vim.fn.setreg('a', result)
  vim.cmd('normal! "ap')
end

-- Función para copiar (buffer, util para tmux)
function xclip_copy()
  local register_content = vim.fn.getreg('"')
  vim.fn.system("xclip -i", register_content)
end

-- Función para pegar (buffer, util para tmux)
function xclip_paste()
  local result = vim.fn.system("xclip -o")
  vim.fn.setreg('a', result)
  vim.cmd('normal! "ap')
end

-- Mapeo de teclas
vim.keymap.set("n", "<leader>Y", ":lua xclip_copy_to_clipboard()<cr>",    {})
vim.keymap.set("n", "<leader>P", ":lua xclip_paste_from_clipboard()<cr>", {})
vim.keymap.set("n", "<leader>y", ":lua xclip_copy()<cr>",  {})
vim.keymap.set("n", "<leader>p", ":lua xclip_paste()<cr>", {})
