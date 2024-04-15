function ColorMyPencils(color)
    -- Important!!
    if vim.fn.has('termguicolors') then
        vim.o.termguicolors = true
    end

    -- For dark version.
    vim.o.background = "dark"

    -- Set contrast.
    -- This configuration option should be placed before `colorscheme gruvbox-material`.
    -- Available values: 'hard', 'medium'(default), 'soft'
    vim.g.gruvbox_material_background = 'soft'

    -- For better performance
    vim.g.gruvbox_material_better_performance = 1

    -- Set the colorscheme
    color = color or "gruvbox-material"
    vim.cmd('colorscheme ' .. color)
end

ColorMyPencils()

