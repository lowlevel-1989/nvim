--[[
Seleccion avanzada de palabra, donde soporta uri y surround (ysiu)
--]]

local function select_current_uri()
  -- Obtener la línea actual y la posición del cursor
  local line = vim.api.nvim_get_current_line()
  local cursor_col = vim.api.nvim_win_get_cursor(0)[2] + 1

  -- Dividir la línea en palabras usando espacios
  local start_col = 1
  local end_col   = 1
  local words = {}
  for word in line:gmatch("%S+") do
    start_col, end_col = line:find(word, end_col)
    table.insert(words, { word = word, start_col = start_col, end_col = end_col })
  end

  -- Identificar la palabra donde está el cursor
  for _, data in ipairs(words) do
    if cursor_col >= data.start_col and cursor_col <= data.end_col then
      vim.cmd('normal! ' .. data.start_col .. '|v' .. data.end_col .. '|')
      break
    end
  end
end

-- MODO: Text Object
vim.keymap.set("o", "iu", select_current_uri, { noremap = true, silent = true })
