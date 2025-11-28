vim.filetype.add({
    extension = {
      ds = 'dragonstone',
      eds = 'dragonstone',
      dragonstone = 'dragonstone',
    },
    pattern = {
      ['.*'] = {
        function(path, bufnr)
          local content = vim.filetype.getlines(bufnr, 1)
          if content and content[1] and content[1]:match('^#!/.*dragonstone') then
            return 'dragonstone'
          end
        end,
      },
    },
  })