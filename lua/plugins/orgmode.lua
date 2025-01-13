return {
  'nvim-orgmode/orgmode',
  event = 'VeryLazy',
  ft = { 'org' },
  config = function()
    -- Setup orgmode
    require('orgmode').setup {
      org_agenda_files = {
        '~/Obsidian/MarcsDailyNotes/**/*',
      },
      org_todo_keywords = { 'TODO', 'NEXT', 'DOING', '|', 'DONE', 'DELEGATED' },
      org_default_notes_file = '~/Obsidian/MarcsDailyNotes/inbox/refile.org',
      org_capture_templates = {
        t = {
          description = 'Todo',
          datetree = {
            tree_type = 'day',
          },
          template = '**** TODO %?\n     Entered on: %U\n',
          target = '~/Obsidian/MarcsDailyNotes/tasks/tasks.org',
        },
        q = {
          description = 'Quote',
          datetree = {
            tree_type = 'year',
          },
          template = '**** QUOTE %?\n     Entered on: %U\n',
          target = '~/Obsidian/MarcsDailyNotes/4 Archives/notes/quotes/quotes.org',
        },
        p = {
          description = 'Someday-Maybe-Prsnl',
          datetree = {
            tree_type = 'month',
          },
          template = '**** Someday/Maybe %?\n     Entered on: %U\n',
          target = '~/Obsidian/MarcsDailyNotes/someday-maybe/someday-maybe-personal.org',
        },
        i = {
          description = 'Someday-Maybe-Inmar',
          datetree = {
            tree_type = 'month',
          },
          template = '**** Someday/Maybe %?\n     Entered on: %U\n',
          target = '~/Obsidian/MarcsDailyNotes/someday-maybe/someday-maybe-inmar.org',
        },
      },
    }

    -- NOTE: If you are using nvim-treesitter with ~ensure_installed = "all"~ option
    -- add ~org~ to ignore_install
    -- require('nvim-treesitter.configs').setup({
    --   ensure_installed = 'all',
    --   ignore_install = { 'org' },
    -- })
  end,
}
