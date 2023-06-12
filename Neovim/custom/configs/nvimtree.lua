local options = {
  filters = {
    dotfiles = true,
  },
  diagnostics = {
    enable = true,
    debounce_delay = 200,
  },
  disable_netrw = true,
  hijack_netrw = true,
  hijack_cursor = true,
  hijack_unnamed_buffer_when_opening = false,
  sync_root_with_cwd = true,
  update_focused_file = {
    enable = true,
    update_cwd = true,
    update_root = false,
  },
  view = {
    adaptive_size = false,
    side = "left",
    width = 30,
    preserve_window_proportions = true,
    signcolumn = "no",
  },
  git = {
    enable = true,
    ignore = false,
    show_on_dirs = false,
    timeout = 500,
  },
  filesystem_watchers = {
    enable = true,
  },
  actions = {
    open_file = {
      resize_window = true,
    },
  },
  renderer = {
    root_folder_label = false,
    highlight_git = true,
    highlight_opened_files = "none",
    group_empty = true,

    indent_markers = {
      enable = false,
    },

    icons = {
      git_placement = "after",
      modified_placement = "after",
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = false,
      },

      glyphs = {
        default = "󰈚",
        symlink = "",
        folder = {
          default = "",
          empty = "",
          empty_open = "",
          open = "",
          symlink = "",
          symlink_open = "",
          arrow_open = "",
          arrow_closed = "",
        },
        git = {
          unstaged = "M",
          staged = "S",
          unmerged = "",
          renamed = "",
          untracked = "U",
          deleted = "",
          ignored = "",
        },
      },
    },
  },
}

return options
