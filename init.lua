--[[
 * **********************************
 * **        colored_stone         **
 * **                              **
 * **      A mod for luanti        **
 * **                              **
 * **    GPL 3.0 by A.C.M.         **
 * **                              **
 * **********************************
]]

colored_stone = {}

local cst = colored_stone

cst.version = 1.8
cst.modname = minetest.get_current_modname();

cst.S = minetest.get_translator(minetest.get_current_modname())

local S = cst.S

cst.colors = {
--                    name  ,colorstring,intensity, description
                     {"white", "#FFFFFF", 128,      S("white")},
                     {"yellow", "#FFFF00", 128,     S("yellow")},
                     {"green", "#00FF00", 128,      S("green")},
                     {"blue", "#0000FF", 128,       S("blue")},
                     {"magenta", "#FF00FF", 128,    S("magenta")},
                     {"red", "#FF0000", 128,        S("red")},
                     {"cyan", "#00FFFF", 128,       S("cyan")},
                     {"brown", "#6D2400", 128,      S("brown")},
                     {"black", "#000000", 160,      S("black")},
            }

local modpath = minetest.get_modpath(minetest.get_current_modname())

dofile(modpath .. "/nodes.lua")
dofile(modpath .. "/recipes.lua")
dofile(modpath .. "/register_mods.lua")

minetest.log("info", "[MOD] " .. cst.modname .. " Version " .. cst.version .. " loaded.")
