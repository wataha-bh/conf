local telescope = require('telescope')

telescope.setup {
  defaults = {
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ['<C-h>'] = 'which_key'
      },
    }
  },
  pickers = {
    find_files = {
      find_command = { 'fd', '--no-ignore', '-t', 'file', '--hidden', '-E', '.git/', '-E', '__pycache__', '-E',
        'node_modules/', '-E', '.venv/' },
    },
    git_files = {
      show_untracked = true,
    },
    live_grep = {
      glob_pattern = { '!__pycache__', '!node_modules/' },
    },
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
  }
}

vim.api.nvim_set_keymap('n', '<leader>ff', ':lua require("telescope.builtin").find_files()<CR>',
  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>g', ':lua require("telescope.builtin").live_grep()<CR>',
  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fg', ':lua require("telescope.builtin").git_files()<CR>',
  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fb', ':lua require("telescope.builtin").buffers()<CR>',
  { noremap = true, silent = true })
