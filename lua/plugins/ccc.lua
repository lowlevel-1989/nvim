--[[
Color picker
]]
return {
  "uga-rosa/ccc.nvim",
  enabled = vim.env.TERM ~= "linux",
  config = function ()
    local ccc     = require("ccc")
    local mapping = ccc.mapping
    local utils   = require("ccc.utils")

    local opts = {
      mappings = {
        ["<CR>"] = mapping.complete,
        ["q"] = mapping.quit,
        ["l"] = mapping.increase1,
        ["d"] = mapping.increase5,
        [","] = mapping.increase10,
        ["h"] = mapping.decrease1,
        ["s"] = mapping.decrease5,
        ["m"] = mapping.decrease10,
        ["H"] = mapping.set0,
        ["M"] = mapping.set50,
        ["L"] = mapping.set100,
        ["0"] = mapping.set0,
        ["1"] = utils.bind(mapping._set_percent, 10),
        ["2"] = utils.bind(mapping._set_percent, 20),
        ["3"] = utils.bind(mapping._set_percent, 30),
        ["4"] = utils.bind(mapping._set_percent, 40),
        ["5"] = mapping.set50,
        ["6"] = utils.bind(mapping._set_percent, 60),
        ["7"] = utils.bind(mapping._set_percent, 70),
        ["8"] = utils.bind(mapping._set_percent, 80),
        ["9"] = utils.bind(mapping._set_percent, 90),
        ["r"] = mapping.reset_mode,
        ["a"] = mapping.toggle_alpha,
        ["g"] = mapping.toggle_prev_colors,
        ["b"] = mapping.goto_prev,
        ["w"] = mapping.goto_next,
        ["B"] = mapping.goto_head,
        ["W"] = mapping.goto_tail,
        ["i"] = mapping.cycle_input_mode,
        ["o"] = mapping.cycle_output_mode,
        ["<LeftMouse>"] = mapping.click,
        ["<ScrollWheelDown>"] = mapping.decrease1,
        ["<ScrollWheelUp>"] = mapping.increase1,
      },
    }

    ccc.setup(opts)

    vim.keymap.set("n", "<leader>c", ":CccPick<cr>", {desc = "Open ColorPicker"})
    vim.keymap.set("n", "<leader>ocp", ":CccPick<cr>", {desc = "Open ColorPicker"})
  end
}
