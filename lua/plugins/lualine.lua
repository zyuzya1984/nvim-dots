local lualine = require('lualine')
local fs = require('modules.file_size')


local diagnostics = {
    'diagnostics',
    sources = { 'nvim_diagnostic' },
    sections = { 'error', 'warn' },
    symbols = { error = ' ', warn = ' ' },
    colored = true,
    update_in_insert = true,
    always_visible = false,
    cond = function()
        return vim.bo.filetype ~= 'markdown'
    end,
}



local mode_map = {
    ['NORMAL']     = 'NOR',
    ['INSERT']     = 'INS',
    ['VISUAL']     = 'VIS',
    ['V-LINE']     = 'V-L',
    ['V-BLOCK']    = 'C-V',
    ['SELECT']     = 'SEL',
    ['S-LINE']     = 'S-L',
    ['S-BLOCK']    = 'S-B',
    ['REPLACE']    = 'REP',
    ['V-REPLACE']  = 'V-R',
    ['COMMAND']    = 'CMD',
    ['EX']         = 'EX',
    ['MORE']       = 'MORE',
    ['CONFIRM']    = 'CFM',
    ['SHELL']      = 'SHL',
    ['TERMINAL']   = 'TERM',
}

local mode = {
    'mode',
    fmt = function(str)
        return mode_map[str] or str
    end,
}

lualine.setup({
    options = {
        icons_enabled = true,
        theme = auto,
        component_separators = { left = '|', right = '|' },
        section_separators = { left = '', right = '' },
        disabled_filetypes = {},
        always_divide_middle = true,
    },

    sections = {
        lualine_a = { mode },
        lualine_b = { fs.file_size },
        lualine_c = {'filename'},
        lualine_x = {diagnostics },
        lualine_z = {'%l/%L'},
        lualine_y = { '' },
    },
})
