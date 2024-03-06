return {
  "rcarriga/nvim-notify",
  opts = {
    background_colour = "#000000", --kur ke bg transparent n theme duhet bo define dhe njgyra ktu qe tmos qisin error
    top_down = false, --move messages bottom right
    timeout = 4500, -- koha qe rri n ekran
    max_height = function()
      return math.floor(vim.o.lines * 0.75)
    end,
    max_width = function()
      return math.floor(vim.o.columns * 0.75)
    end,
    on_open = function(win)
      vim.api.nvim_win_set_config(win, { zindex = 100 })
    end,
  },
}
