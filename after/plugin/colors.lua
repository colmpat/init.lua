-- Global function for setting colorscheme anywhere in vim
function Day()
  vim.cmd.colorscheme("tokyonight-day")
end
function Night()
  vim.cmd.colorscheme("tokyonight-storm")
end

-- Set default colorscheme to tokyonight-day
Day()
