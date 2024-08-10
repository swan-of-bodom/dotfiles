return {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
      "omnisyle/nvim-hidesig",
    },
    build = ":TSUpdate",
}
