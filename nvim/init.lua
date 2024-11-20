require("config.lazy")
require("nvim-treesitter.configs").setup({
    auto_install = true,
    highlight = {
        enable = true
    }
})

require 'lspconfig'.clangd.setup{}

vim.opt.number = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.cursorline = true
vim.opt.smartcase = true
vim.opt.wildmenu = true
vim.opt.mouse = ""
vim.opt.termguicolors = true
vim.opt.laststatus = 2
vim.opt.history = 50
vim.opt.cmdheight = 0
vim.opt.autoindent = true
vim.opt.cindent = true
vim.opt.smartindent = true

vim.cmd('syntax on')
vim.cmd('colorscheme vscode')
vim.cmd('nmap <F9> :TagbarToggle<CR>')
vim.cmd('let g:indentLine_enabled = 1')
vim.cmd('let g:vim_json_conceal=0')
vim.cmd('set cc=80')
vim.cmd('set so=7')
vim.cmd('nmap <F8> :!bash /work/scripts/sync.sh<CR><CR>')

vim.cmd('let NERDTreeWinPos=\'left\'')
vim.cmd('let NERDTreeShowLineNumbers=1')
vim.cmd('let NERDTreeAutoCenter=1')
vim.cmd('let NERDTreeShowHidden=1')
vim.cmd('let NERDTreeWinSize=31')
vim.cmd('let NERDTreeShowBookmarks=1')
vim.cmd('let NERDTreeQuitOnOpen=1')
vim.cmd('let NERDTreeStatusline=1')
vim.cmd('let g:NERDTreeDirArrowExpandable = \'*\'')
vim.cmd('let g:NERDTreeDirArrowCollapsible = \'*\'')

vim.opt.statusline = '%f  '
vim.opt.statusline = vim.o.statusline .. '%h%m%r'
vim.opt.statusline = vim.o.statusline .. '%l/%L,%c'
vim.opt.statusline = vim.o.statusline .. ' [%{&filetype}]'

vim.g.mapleader = "\\"
vim.cmd('let g:Lf_WindowPosition = \'popup\'')
vim.keymap.set('n', '<leader>fr', ':<C-U><C-R>=printf("Leaderf! gtags -r %s", expand("<cword>"))<CR><CR>')
vim.keymap.set('n', '<leader>fd', ':<C-U><C-R>=printf("Leaderf! gtags -d %s", expand("<cword>"))<CR><CR>')
vim.api.nvim_set_keymap('v', '<C-y>', ":<C-u>'<,'>w !tee -a /work/copy.txt<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ff', ':LeaderfFile<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-i>', ':vsp<CR><C-w>l:LeaderfFile<CR>', { noremap = true, silent = true })

vim.diagnostic.config {
  virtual_text = false,
  signs = false,
  underline = false,
}
vim.api.nvim_set_keymap('n', '<C-g>', '<C-]>', { noremap = true })
vim.api.nvim_create_user_command('FindInKernel', function(opts)
  vim.cmd('Leaderf! gtags -d ' .. vim.fn.shellescape(opts.args))
end, { nargs = 1 })

