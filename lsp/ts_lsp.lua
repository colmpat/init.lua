return {
  -- Command and arguments to start the server.
  cmd = { 'typescript-language-server', '--stdio' },
  -- Filetypes to automatically attach to.
  filetypes = { 'javascript' },
  root_markers = {
    { 'package.json' },
    '.git',
  },
}
