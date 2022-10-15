-- Automatically install packer
    sections = {
        lualine_a = {'mode'},
        -- lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_b = {'filename'},

    }
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path
  })
  vim.o.runtimepath = vim.fn.stdpath('data') .. '/site/pack/*/start/*,' .. vim.o.runtimepath
end

-- Autocommand that reloads neovim whenever you save the packer_init.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer_init.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, 'packer')
if not status_ok then
  return
end

-- Скачивание плагинов
return packer.startup(function(use)
    -- Мои плагины
    use 'wbthomason/packer.nvim'

    -- Color schemes
    use 'navarasu/onedark.nvim'

    -- StatusLine
    use ({
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true },
        config = function()
            require('plugins/lualine')
        end
    })

	-- LSP сервер
	use 'neovim/nvim-lspconfig'

    -- LSP  

    if packer_bootstrap then
        require('packer').sync()
    end
end)
