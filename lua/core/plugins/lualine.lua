require('lualine').setup {
  options = {
    icons_enable = true,
    theme = dracula,
  },
  sections = {
    lualine_a = {
      {
	'filename',
	path = 1,
      }
    }
  }
}
