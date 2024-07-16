return {
  "derektata/lorem.nvim",
  config = function()
    require("lorem").setup({
      sentenceLength = "medium",
      comma_chance = 0.2,
      max_commas_per_sentence = 2,
    })
  end,
}
