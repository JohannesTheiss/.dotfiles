-- setup the color theme
require('nightfox').setup({
    palettes = {
        carbonfox = {
            sel0 = "#3e4a5b"
        }
    }
})

-- setup the statusline
require('lualine').setup({
    options = {
        theme = 'codedark'
    }
})


function ColorMyPencils(color)
	color = color or "carbonfox"

	vim.cmd.colorscheme(color)

    -- set background to 'none'
	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
