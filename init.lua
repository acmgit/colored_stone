--[[
 * **********************************
 * **        colored_stone         **
 * **                              **
 * **      A mod for luanti        **
 * **                              **
 * **    GPL 3.0 by A.C.M.         **
 * **                              **
 * **********************************
 */
]]

cst = {}

cst.version = 1.0
cst.modname = minetest.get_current_modname();

cst.S = minetest.get_translator(minetest.get_current_modname())

local S = cst.S

cst.colors = {
--                    name  ,colorstring,description, intensity
                     {"white", "#FFFFFF", S("white"), 100},
                     {"yellow", "#FFFF00", S("yellow"),100},
                     {"green", "#00FF00", S("green"),100},
                     {"blue", "#0000FF", S("blue"),100},
                     {"magenta", "#FF00FF", S("magenta"),100},
                     {"cyan", "#00FFFF", S("cyan"),100},
                     {"brown", "#6D2400", S("brown"),100},
                     {"black", "#000000", S("black"),100},
            }

for key,color in pairs(cst.colors) do

    minetest.register_node("colored_stone:cobble_" .. color[1], {
        description = S("Cobblestone") .. " " .. color[3],
        tiles = {"default_cobble.png^[colorize:" .. color[2] .. ":" .. color[4]},
        is_ground_content = false,
        groups = {cracky = 3, stone = 2},
        sounds = default.node_sound_stone_defaults(),
        _tnt_loss = 4,
    })

    minetest.register_node("colored_stone:stone_" .. color[1], {
        description = S("Stone") .. " " .. color[3],
        tiles = {"default_stone.png^[colorize:" .. color[2] .. ":" .. color[4]},
        groups = {cracky = 3, stone = 1},
        drop = "colored_stone:cobble_" .. color[1],
        legacy_mineral = true,
        sounds = default.node_sound_stone_defaults(),
	})

    minetest.register_craft({
        output = "colored_stone:cobble_" .. color[1],
        recipe = {	{"default:cobble", "dye:" .. color[1], ""} },
    })

    minetest.register_craft({
        output = "colored_stone:stone_" .. color[1],
        recipe = {	{"default:stone", "dye:" .. color[1], ""} },
    })

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
end
