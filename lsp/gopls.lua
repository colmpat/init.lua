return {
  -- Command and arguments to start the server.
  cmd = { 'gopls' },
  -- Filetypes to automatically attach to.
  filetypes = { 'go' },
  root_markers = {
    { 'go.mod' },
    '.git',
  },
}
