vim.cmd [[
  augroup _fold_bug_solution  " https://github.com/nvim-telescope/telescope.nvim/issues/559
    autocmd!
    autocmd BufRead * autocmd BufWinEnter * ++once normal! zx
  augroup end

  " augroup _cpplint
  "   autocmd!
  "   autocmd BufWritePre *.cpp :! cpplint %
  " augroup end
]]

vim.cmd [[
  augroup fmt
    autocmd!
    autocmd BufWritePre * lua vim.lsp.buf.format()
  augroup END
]]
--  augroup _general_settings
--    autocmd!
--    autocmd FileType qf,help,man,lspinfo nnoremap <silent> <buffer> q :close<CR>
--    autocmd TextYankPost * silent!lua require('vim.highlight').on_yank({higroup = 'Search', timeout = 200})
--    autocmd BufWinEnter * set formatoptions-=cro
--  augroup end
--  augroup _git
--    autocmd!
--    autocmd FileType gitcommit setlocal wrap
--    autocmd FileType gitcommit setlocal spell
--  augroup end
--  augroup _markdown
--    autocmd!
--    autocmd FileType markdown setlocal wrap
--    autocmd FileType markdown setlocal spell
--  augroup end
--
--  " augroup _auto_resize
--  "   autocmd!
--  "   autocmd VimResized * tabdo wincmd =
--  " augroup end
--
--  augroup _alpha
--    autocmd!
--    autocmd User AlphaReady set showtabline=0 | autocmd BufUnload <buffer> set showtabline=2
--  augroup end
