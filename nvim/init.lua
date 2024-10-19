require("config.lazy")
require("nvim-treesitter.configs").setup({
    auto_install = true,
    highlight = {
        enable = true
    }
})

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


vim.cmd('set completeopt=longest,menu')
vim.cmd('let g:ycm_collect_identifiers_from_tags_files=1')
vim.cmd('let g:ycm_show_diagnostics_ui=0')
vim.cmd('let g:ycm_min_num_of_chars_for_completion=3')
vim.cmd('let g:ycm_complete_in_strings = 1')
vim.cmd('let g:ycm_key_invoke_completion = \'<C-p>\'')
vim.cmd('let g:ycm_confirm_extra_conf = 0')
vim.cmd('let g:ycm_seed_identifiers_with_syntax=1')
vim.cmd('let g:ycm_collect_identifiers_from_tags_files=1')
vim.cmd('nnoremap <C-g> :YcmCompleter GoToDefinition<CR>')
vim.cmd('nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>')
vim.g.ycm_filetype_blacklist = { tagbar = 1, nerdtree = 1 }

vim.opt.statusline = '%f  '
vim.opt.statusline = vim.o.statusline .. '%h%m%r'
vim.opt.statusline = vim.o.statusline .. '%l/%L,%c'
vim.opt.statusline = vim.o.statusline .. ' [%{&filetype}]'

vim.g.mapleader = "\\"
vim.cmd('let g:Lf_WindowPosition = \'popup\'')
vim.keymap.set('n', '<leader>fr', ':<C-U><C-R>=printf("Leaderf! gtags -r %s", expand("<cword>"))<CR><CR>')
vim.keymap.set('n', '<leader>fd', ':<C-U><C-R>=printf("Leaderf! gtags -d %s", expand("<cword>"))<CR><CR>')
vim.api.nvim_set_keymap('v', '<C-y>', ":<C-u>'<,'>w !tee -a /work/copy.txt<CR>", { noremap = true, silent = true })

vim.api.nvim_create_user_command('FindInKernel', function(opts)
  vim.cmd('Leaderf! gtags -d ' .. vim.fn.shellescape(opts.args))
end, { nargs = 1 })
