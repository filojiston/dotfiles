require('telescope').setup {
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = require('telescope.actions').close,
      },
    },
  },
  extensions = {
    file_browser = {
      hijack_netrw = true
    },
  },
}



require('telescope').load_extension "file_browser"
