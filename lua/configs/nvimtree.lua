local options = {
  git = {
    enable = true,
  },

  filters = {
    git_ignored = false,
  },

  renderer = {
    group_empty = true,
    icons = {
      show = {
        git = true,
      },
    },
  },

  view = {
    width = 60,
  },
}

return options
