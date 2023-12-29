-- Install Packer automatically if it's not installed(Bootstraping)
-- Hint: string concatenation is done by `..`

local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ 
            'git', 
            'clone', 
            '--depth', 
            '1', 
            'https://github.com/wbthomason/packer.nvim',
            install_path
        })
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end
local packer_bootstrap = ensure_packer()

-- Reload configurations if we modifiy plugins.lua
-- Hint
--      <afile> - replaced with the filename of the buffer being manipulated
vim.cmd([[
    augroup packer_user_config
      autocmd!
      autocmd BufwritePost plugins.lua source <afile> | PackerSync
    augroup end
]])


-- Install plugins here - `use ...`
-- Packer.nvim hints
--     after = string or list.          -- Specifies plugins to load before this plugin. See "sequencing" below
--     config = string or function      -- Specifies code to run after this plugin is load 
--     ft = string or list              -- Specifies plugin dependencies. See "dependencies".
--     run = string, function, or table,-- Specify operations to be run after successful installs/updates of a plugin
return require('packer').startup(function(use)
        -- Packer can manage itself
        use 'wbthomason/packer.nvim'

        -- NOTE: PUT YOUR THIRD PLUGIN HERE
        use 'nvim-tree/nvim-tree.lua'
        use 'nvim-tree/nvim-web-devicons.lua'

        -- Automatically set up your configuration after cloning packer.nvim
        -- Put this at the end after all plugins
        if packer_bootstrap then
            require('packer').sync()
        end
    end)
