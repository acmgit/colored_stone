--[[
        Cooking Recipes
]]

local cst = colored_stone

for _,color in pairs(cst.colors) do

    minetest.register_craft({
        type = "cooking",
        output = "default:stone",
        recipe = "colored_stone:cobble_" .. color[1],
    })

    minetest.register_craft({
        type = "cooking",
        output = "default:stone",
        recipe = "colored_stone:stone_" .. color[1],
    })

    minetest.register_craft({
        type = "cooking",
        output = "default:stonebrick",
        recipe = "colored_stone:stonebrick" .. color[1],
    })

    minetest.register_craft({
        type = "cooking",
        output = "default:stone_block",
        recipe = "colored_stone:stone_block" .. color[1],
    })

--[[
        Cooking Recipes
]]
    minetest.register_craft({
        type = "cooking",
        output = "default:stone",
        recipe = "colored_stone:cobble_" .. color[1],
    })

    minetest.register_craft({
        type = "cooking",
        output = "default:stone",
        recipe = "colored_stone:stone_" .. color[1],
    })

    minetest.register_craft({
        type = "cooking",
        output = "default:stonebrick",
        recipe = "colored_stone:stonebrick" .. color[1],
    })

    minetest.register_craft({
        type = "cooking",
        output = "default:stone_block",
        recipe = "colored_stone:stone_block" .. color[1],
    })

end



