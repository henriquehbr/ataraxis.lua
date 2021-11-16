require "ataraxis.quit_buffer_or_nvim"
require "ataraxis.adjust_pads"

-- prevent focusing on pads and adjust their width when vim resizes
vim.cmd [[
    augroup ataraxis
        autocmd!
        autocmd BufEnter leftbuffer wincmd l
        autocmd BufEnter rightbuffer wincmd h
        autocmd VimResized * call v:lua.adjust_pads()
    augroup end
]]

-- commands for closing buffers without breaking layout
vim.cmd "command! AtaraxisClose call v:lua.quit_buffer_or_nvim()"
vim.cmd "command! AtaraxisForceClose call v:lua.quit_buffer_or_nvim({ \"force\": 1 })"
