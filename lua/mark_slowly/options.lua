-- vim.opt.number = true

local options = {
  backup = false,
  number = true,
  shiftwidth = 2,
  tabstop = 2,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
