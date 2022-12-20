require('funcs.io')

-- bootstrap packer if not installed
local install_path = vim.fn.stdpath('data') ..'/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  packer_bootstrap = vim.fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

require('packer').init()
require('packer').use({'wbthomason/packer.nvim'})

if packer_bootstrap then
  require('packer').sync()
end
