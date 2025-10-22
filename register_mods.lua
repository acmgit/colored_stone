-- Registering for various Mods

local cst = colored_stone
local colors = cst.colors

if(minetest.get_modpath("moreblocks")) then
--[[
stairsplus:register_all("moreblocks", "wood", "default:wood", {
		description = "Wooden",
		tiles = {"default_wood.png"},
		groups = {oddly_breakabe_by_hand=1},
		sounds = default.node_sound_wood_defaults(),
	})
]]--

    for _,color in pairs(colors) do
        stairsplus:register_all("moreblocks", "cobble_" .. color[1], "colored_stone:cobble_" .. color[1],{
                description = minetest.registered_nodes["colored_stone:cobble_" .. color[1]].description,
                tiles = minetest.registered_nodes["colored_stone:cobble_" .. color[1]].tiles,
                groups = minetest.registered_nodes["colored_stone:cobble_" .. color[1]].groups,
                sounds = minetest.registered_nodes["colored_stone:cobble_" .. color[1]].sounds,

        })

        stairsplus:register_all("moreblocks", "stone_" .. color[1], "colored_stone:stone_" .. color[1],{
                description = minetest.registered_nodes["colored_stone:stone_" .. color[1]].description,
                tiles = minetest.registered_nodes["colored_stone:stone_" .. color[1]].tiles,
                groups = minetest.registered_nodes["colored_stone:stone_" .. color[1]].groups,
                sounds = minetest.registered_nodes["colored_stone:stone_" .. color[1]].sounds,

        })

        stairsplus:register_all("moreblocks", "stone_" .. color[1], "colored_stone:stonebrick_" .. color[1],{
                description = minetest.registered_nodes["colored_stone:stonebrick_" .. color[1]].description,
                tiles = minetest.registered_nodes["colored_stone:stonebrick_" .. color[1]].tiles,
                groups = minetest.registered_nodes["colored_stone:stonebrick_" .. color[1]].groups,
                sounds = minetest.registered_nodes["colored_stone:stonebrick_" .. color[1]].sounds,

        })

        stairsplus:register_all("moreblocks", "stone_" .. color[1], "colored_stone:stone_block_" .. color[1],{
                description = minetest.registered_nodes["colored_stone:stone_block_" .. color[1]].description,
                tiles = minetest.registered_nodes["colored_stone:stone_block_" .. color[1]].tiles,
                groups = minetest.registered_nodes["colored_stone:stone_block_" .. color[1]].groups,
                sounds = minetest.registered_nodes["colored_stone:stone_block_" .. color[1]].sounds,

        })

    end

end
