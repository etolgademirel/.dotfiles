return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },

    config = function()
        local harpoon = require("harpoon")
        harpoon:setup()

        local conf = require("telescope.config").values
        local function toggle_telescope(harpoon_files)
            local file_paths = {}
            for _, item in ipairs(harpoon_files.items) do
                table.insert(file_paths, item.value)
            end

            require("telescope.pickers").new({}, {
                prompt_title = "Harpoon",
                finder = require("telescope.finders").new_table({
                    results = file_paths,
                }),
                previewer = conf.file_previewer({}),
                sorter = conf.generic_sorter({}),
            }):find()
        end

        local keymap = vim.keymap
        keymap.set("n", "<leader>ha", function() harpoon:list():add() end, { desc =  "Add file to harpoon list" })
        keymap.set("n", "<leader>hm", function() toggle_telescope(harpoon:list()) end, { desc =  "Show harpoon list" })

        keymap.set("n", "<leader>h1", function() harpoon:list():select(1) end, { desc = "Harppon shortcut to 1th file" })
        keymap.set("n", "<leader>h2", function() harpoon:list():select(2) end, { desc = "Harppon shortcut to 2th file" })
        keymap.set("n", "<leader>h3", function() harpoon:list():select(3) end, { desc = "Harppon shortcut to 3th file" })
        keymap.set("n", "<leader>h4", function() harpoon:list():select(4) end, { desc = "Harppon shortcut to 4th file" })

        -- Toggle previous & next buffers stored within Harpoon list
        keymap.set("n", "<leader>hp", function() harpoon:list():prev() end, { desc = "Harpoon open previous file in list "})
        keymap.set("n", "<leader>hn", function() harpoon:list():next() end, { desc = "Harpoon open next file in list" })
    end,
}
