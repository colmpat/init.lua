return {
  -- Command and arguments to start the server.
  cmd = { 'gopls' },
  -- Filetypes to automatically attach to.
  filetypes = { 'go' },
  root_markers = {
    '.root-nvim-lsp-marker',
    { 'go.mod' },
    '.git',
  },
}
