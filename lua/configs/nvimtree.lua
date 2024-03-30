local options = {
  git = {
    enable = true,
  },

  filters = {
    git_ignored = false,
  },

  renderer = {
    root_folder_label = ':~:s?$?/..?',
    group_empty = true,
    icons = {
      show = {
        git = true,
      },
    },
  },

  view = {
    width = {
      min = 30,
    },
  },
}

return options
