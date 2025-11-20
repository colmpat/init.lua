return {
  cmd = { 'basedpyright-langserver', '--stdio' },
  filetypes = { 'python' },
  root_markers = {
    '.root-nvim-lsp-marker',
    { 'pyproject.toml', 'setup.py', 'setup.cfg', 'requirements.txt' },
    '.git',
  },

  settings = {
    python = {},
    basedpyright = {
      analysis = {
        typeCheckingMode = "basic"
      }
    }
  }
}
