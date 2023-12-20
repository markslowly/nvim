
local options = {
    -- Hint: use `:h <option>` to figure out the meaning if needed
    clipboard = 'unnamedplus', -- use system clipboard
    completeopt = { 'menu', 'menuone', 'noselect' },
    mouse = 'a', -- allow the mouse to be used in Nvim

    -- Tab
    tabstop = 4, -- number of visual spaces per TAB
    softtabstop = 4, -- number of spacesin tab when editing
    shiftwidth = 4, -- insert 4 spaces on a tab
    expandtab = true, -- tabs are spaces, mainly because of python

    -- UI config
    number = true, -- show absolute number
    relativenumber = true, -- add numbers to each line on the left side
    cursorline = true, -- highlight cursor line underneath the cursor horizontally
    splitbelow = true, -- open new vertical splits bottom
    splitright = true, -- open new horizontal splits right
    showmode = false, -- we are experienced, we don't need the "-- INSERT --" mode hint
  
    -- Searching
    incsearch = true, -- search as characters are entered
    hlsearch = false, -- do not hightlight matches
    ignorecase = false, -- ignore case in searches by default
    smartcase = true, -- but make it case sensitive if an uppercase is entered
    
    backup = false,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
