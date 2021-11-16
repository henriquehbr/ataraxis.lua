local get_buffers = require "helpers.nvim_get_buffers"

function _G.quit_buffer_or_nvim(opts)
    local options = opts or {force = false}

    local opened_windows = vim.fn.winnr "$"
    local visible_buffers = #get_buffers "buflisted(v:val)"

    if opened_windows > 3 then
        -- close only split
        vim.cmd(options.force and "quit!" or "quit")
    elseif visible_buffers < 2 then
        -- close last remaining buffer (alongside pads)
        vim.cmd(options.force and "quitall!" or "quitall")
    else
        -- close only the current buffer (keep pads)
        vim.cmd "bprevious"
        vim.cmd(options.force and "bdelete#!" or "bdelete#")
    end
end
