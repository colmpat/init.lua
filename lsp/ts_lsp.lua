return {
  -- Command and arguments to start the server.
  cmd = { 'typescript-language-server', '--stdio' },
  -- Filetypes to automatically attach to.
  filetypes = { 'javascript', 'javascriptreact', 'typescript', 'typescriptreact' },
  root_markers = {
    '.root-nvim-lsp-marker',
    { 'tsconfig.js', 'tsconfig.json', 'package.json' },
    '.git',
  },
}
