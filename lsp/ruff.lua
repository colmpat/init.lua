return {
  -- Command and arguments to start the server.
  cmd = { 'ruff', 'server' },
  -- Filetypes to automatically attach to.
  filetypes = { 'python' },
  root_markers = {
    '.root-nvim-lsp-marker',
    { 'pyproject.toml', 'setup.py', 'setup.cfg', 'requirements.txt' },
    '.git',
  },
}
