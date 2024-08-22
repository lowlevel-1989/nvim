return {
  "jackMort/ChatGPT.nvim",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
  opts = {
    openai_params = {
      model = "gpt-4o-mini",
    },
    openai_edit_params = {
      model = "gpt-4o-mini",
    },
  },
}
