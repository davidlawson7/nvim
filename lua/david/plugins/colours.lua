function ColourPencils(colour)
	colour = colour or "everforest"
	vim.cmd.colorscheme(colour)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {

	{
		"sainnhe/everforest",
    		name = "everforest",
    		config = function()
        		-- Optionally configure and load the colorscheme
        		-- directly inside the plugin declaration.
        		vim.g.everforest_enable_italic = true
    
                ColourPencils("everforest")
    		end
	}
} 
