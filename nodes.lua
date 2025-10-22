local cst = colored_stone
local S = cst.S

cst.nodes = {}

for _,color in pairs(cst.colors) do

    table.insert(cst.nodes, "colored_stone:cobble_" .. color[1])
    minetest.register_node("colored_stone:cobble_" .. color[1], {
        description = S("Cobblestone") .. " " .. color[4],
        tiles = {"default_cobble.png^[colorize:" .. color[2] .. ":" .. color[3]},
        is_ground_content = false,
        groups = {cracky = 3, stone = 2},
        sounds = default.node_sound_stone_defaults(),
        _tnt_loss = 4,
    })

    table.insert(cst.nodes, "colored_stone:stone_" .. color[1])
    minetest.register_node("colored_stone:stone_" .. color[1], {
        description = S("Stone") .. " " .. color[4],
        tiles = {"default_stone.png^[colorize:" .. color[2] .. ":" .. color[3]},
        groups = {cracky = 3, stone = 1},
        drop = "colored_stone:cobble_" .. color[1],
        legacy_mineral = true,
        sounds = default.node_sound_stone_defaults(),
	})

    table.insert(cst.nodes, "colored_stone:stonebrick_" .. color[1])
    minetest.register_node("colored_stone:stonebrick_" .. color[1], {
        description = S("Stone Brick") .. " " .. color[4],
        paramtype2 = "facedir",
        place_param2 = 0,
        tiles = {"default_stone_brick.png^[colorize:" .. color[2] .. ":" .. color[3]},
        is_ground_content = false,
        groups = {cracky = 2, stone = 1},
        sounds = default.node_sound_stone_defaults(),
    })

    table.insert(cst.nodes, "colored_stone:stone_block_" .. color[1])
    minetest.register_node("colored_stone:stone_block_" .. color[1], {
        description = S("Stone Block") .. " " .. color[4],
        tiles = {"default_stone_block.png^[colorize:" .. color[2] .. ":" .. color[3]},
        is_ground_content = false,
        groups = {cracky = 2, stone = 1},
        sounds = default.node_sound_stone_defaults(),
    })

--[[
        Recipes
]]

    minetest.register_craft({
        output = "colored_stone:cobble_" .. color[1],
        recipe = {	{"default:cobble", "dye:" .. color[1], ""} },
    })

    minetest.register_craft({
        output = "colored_stone:stone_" .. color[1],
        recipe = {	{"default:stone", "dye:" .. color[1], ""} },
    })

    minetest.register_craft({
        output = "colored_stone:stonebrick_" .. color[1],
        recipe = {	{"default:stonebrick", "dye:" .. color[1], ""} },
    })

    minetest.register_craft({
        output = "colored_stone:stonebrick_" .. color[1] .. " 4",
        recipe = {
            {"colored_stone:stone_" .. color[1], "colored_stone:stone_" .. color[1]},
            {"colored_stone:stone_" .. color[1], "colored_stone:stone_" .. color[1]},
        }
    })

    minetest.register_craft({
        output = "colored_stone:stone_block_" .. color[1],
        recipe = {	{"default:stone_block", "dye:" .. color[1], ""} },
    })

minetest.register_craft({
	output = "colored_stone:stone_block_" .. color[1] .. " 9",
	recipe = {
		{"colored_stone:stone_" .. color[1], "colored_stone:stone_" .. color[1], "colored_stone:stone_" .. color[1]},
		{"colored_stone:stone_" .. color[1], "colored_stone:stone_" .. color[1], "colored_stone:stone_" .. color[1]},
		{"colored_stone:stone_" .. color[1], "colored_stone:stone_" .. color[1], "colored_stone:stone_" .. color[1]},
	}
})

end
