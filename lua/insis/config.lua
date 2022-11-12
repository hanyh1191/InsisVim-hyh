-- Default user config
return {
  -- config_path = vim.fn.stdpath("config"),

  lock_plugin_commit = false,
  -- very magic mode
  -- https://www.youtube.com/watch?v=VjOcINs6QWs
  enable_very_magic_search = true,
  -- disable code hightlight on big file for performance
  disalbe_highlight_line_count = 10000,

  packer = {
    max_jobs = 20,
    clone_timeout = 100,

    -- default_url_format = "https://hub.fastgit.xyz/%s",
    -- default_url_format = "https://mirror.ghproxy.com/https://github.com/%s",
    -- default_url_format = "https://gitcode.net/mirrors/%s",
    -- default_url_format = "https://gitclone.com/github.com/%s",
    default_url_format = "https://github.com/%s",
  },

  notify = {
    enable = true,
    -- in millionsecond
    timeout = 3000,
    -- 'fade', 'static', 'slide'
    stages = "fade",
    -- 'defalut','minimal','simple'
    render = "minimal",
  },

  nvimTree = {

    enable = true,

    keys = {

      toggle = "<A-m>",
      -- toggle = "<leader>m"
      edit = { "o", "<2-LeftMouse>" },
      system_open = "<CR>",
      vsplit = "sv",
      split = "sh",
      -- toggle .gitignore (git enable)
      toggle_git_ignored = "i",
      -- Hide (dotfiles)
      toggle_dotfiles = ".",
      -- togglle custom config
      toggle_custom = "u",

      refresh = "R",
      -- file operate
      create = "a",
      remove = "d",
      rename = "r",
      cut = "x",
      copy = "c",
      paste = "p",
      copy_name = "y",
      copy_path = "Y",
      copy_absolute_path = "gy",
      toggle_file_info = "I",
      tabnew = "t",
      cd = "]",
      dir_up = "[",
    },
  },

  bufferLine = {

    enable = true,

    keys = {

      -- left / right cycle
      prev = "<C-h>",
      next = "<C-l>",

      -- close current buffer
      close = "<C-w>", -- close = "<leader>bc",

      -- close all left / right tabs
      close_left = "<leader>bh",
      close_right = "<leader>bl",

      -- close all other tabs
      close_others = "<leader>bo",
      close_pick = "<leader>bp",
    },
  },

  telescope = {

    enable = true,

    keys = {
      find_files = { "<C-p>", "ff" },
      live_grep = "<C-f>",
      live_grep_args = "sf", -- super find  "xx" -tmd

      -- 上下移动
      move_selection_next = "<C-j>",
      move_selection_previous = "<C-k>",
      -- move_selection_next = "<C-n>",
      -- move_selection_previous = "<C-p>",
      -- 历史记录
      cycle_history_next = "<Down>",
      cycle_history_prev = "<Up>",
      -- 关闭窗口
      -- close = "<C-c>",
      close = "<esc>",
      -- 预览窗口上下滚动
      preview_scrolling_up = "<C-u>",
      preview_scrolling_down = "<C-d>",
    },
  },

  -- super window
  -- will disable default s key

  s_windows = {

    enable = true,

    keys = {

      split_vertically = "sv",
      split_horizontally = "sh",
      -- close current
      close = "sc",
      -- close others
      close_others = "so",

      -- jump between windows
      jump_left = { "<A-h>", "<leader>h" },
      jump_right = { "<A-l>", "<leader>l" },
      jump_up = { "<A-k>", "<leader>k" },
      jump_down = { "<A-j>", "<leader>j" },

      -- control windows size
      width_decrease = "s,",
      width_increase = "s.",
      height_decrease = "sj",
      height_increase = "sk",
      size_equal = "s=",
    },
  },

  -- super tab
  s_tab = {

    enable = true,

    keys = {
      split = "ts",
      prev = "th",
      next = "tl",
      first = "tj",
      last = "tk",
      close = "tc",
    },
  },

  surround = {

    enable = true,

    keys = {
      -- you surround
      normal = "ys",
      -- you surround line
      normal_cur = "yss",
      delete = "ds",
      change = "cs",
      -- visual mode
      visual = "s",
      visual_line = "gs",
      -- disable
      insert = false,
      insert_line = false,
      normal_line = false,
      normal_cur_line = false,
    },
  },

  ------------------------------------
  -- Languages

  frontend = {
    enable = true,
    -- treesitter code highlight
    highlight = { "html", "css", "javascript", "typescript", "tsx", "vue" },

    -- npm install -g eslint_d
    linter = "eslint_d",
    code_actions = "eslint_d",
    formatter = "eslint_d", -- eslint_d | prettier

    typescript = {
      keys = {
        ts_organize = "gs",
        ts_rename_file = "gR",
        ts_add_missing_import = "ga",
        ts_remove_unused = "gu",
        ts_fix_all = "gf",
        ts_goto_source = "gD",
      },
    },
  },

  golang = {
    enable = false,
    linter = "golangci-lint",
    formatter = "gofmt",
  },

  lua = {
    enable = true,
    formatter = "stylua",
  },

  rust = {
    enable = false,
    -- rustup component add rustfmt
    formatter = "rustfmt",
  },

  sh = {
    enable = false,
    --  brew install shfmt
    formatter = "shfmt",
  },

  python = {
    enable = false,

    -- pip install black
    -- asdf reshim python
    formatter = "black",
  },

  ruby = {
    enable = false,
    -- gem install rubocop
    formatter = "rubocop",
  },

  json = {
    enable = false,

    -- npm install -g fixjson
    formatter = "fixjson",
  },

  markdown = {

    enable = false,

    mkdnflow = {
      next_link = "gn",
      prev_link = "gp",
      next_heading = "gj",
      prev_heading = "gk",
      go_back = "<C-o>",
      follow_link = "gd",
      toggle_item = "tt",
    },
  },

  -- TODO: mirror
  mirror = {
    treesitter = "https://github.com/",
    packer = "https://github.com/",
  },

  venn = {

    enable = true,

    keys = {
      -- toggle keymappings for venn using <leader>v
      toggle = "<leader>v",
      up = "K",
      down = "J",
      left = "H",
      right = "L",
      -- draw a box by pressing "f" with visual selection
      draw_box = "f",
    },
  },

  zen = {
    enable = true,
    keys = {
      toggle = "<leader>z",
    },
  },

  git = {
    enable = true,

    -- sign display
    signcolumn = true, -- Toggle with `:Gitsigns toggle_signs`
    numhl = false, -- Toggle with `:Gitsigns toggle_numhl`
    linehl = false, -- Toggle with `:Gitsigns toggle_linehl`
    word_diff = false, -- Toggle with `:Gitsigns toggle_word_diff`
    current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
  },

  cmp = {
    enable = true,

    keys = {
      confirm = "<CR>",
      select_next_item = "<C-j>",
      select_prev_item = "<C-k>",
      scroll_doc_up = "<C-u>",
      scroll_doc_down = "<C-d>",
      complete = "<A-.>",
      abort = "<A-,>",

      -- luasnip
      snip_jump_next = "<C-l>",
      snip_jump_prev = "<C-h>",
      snip_next_choice = "<C-j>",
      snip_prev_choice = "<C-k>",
    },
  },

  keys = {

    leader_key = " ",
    -- no highlight
    nohl = "<ESC><ESC>",

    -- quick save / quite
    n_save = "<leader>w", -- :w
    n_save_quit = "<leader>wq", --:wq
    n_save_all = "<leader>wa", -- :wa
    -- n_save_all_quit = "<leader>qa", -- :wqa
    n_force_quit = "<leader>q", -- :qa!

    -- quick move
    n_v_5j = "<C-j>",
    n_v_5k = "<C-k>",
    n_v_10k = "<C-u>",
    n_v_10j = "<C-d>",

    fold = {
      open = "zo",
      close = "zc",
    },

    terminal_to_normal = "<Esc>",
    -- TODO

    -- proxy
    -- im-select
  },

  comment = {
    enable = true,
    -- Normal 模式快捷键
    toggler = {
      line = "gcc", -- 行注释
      block = "gbc", -- 块注释
    },
    -- Visual 模式
    opleader = {
      line = "gc",
      bock = "gb",
    },
  },

  toggleterm = {
    enable = true,

    -- <leader>ta 浮动命令行窗口
    toggle_window_A = "<leader>ta",
    -- <leader>tb 右侧命令行窗口
    toggle_window_B = "<leader>tb",
    -- <leader>tc 下方命令行窗口
    toggle_window_C = "<leader>tc",
  },

  lsp = {

    -- jumps to the declaration
    definition = "gd",
    -- jumps to the declaration, many servers do not implement this method
    declaration = false,
    -- displays hover information
    hover = "gh",
    -- lists all the implementations
    implementation = "gi",
    -- lists all the references to the symbol
    references = "gr",

    rename = "<leader>rn",
    code_action = "<leader>ca",
    format = "<leader>f",
    -- diagnostic
    open_flow = "gp",
    goto_next = "gj",
    goto_prev = "gk",
    list = "gl",
  },
}
