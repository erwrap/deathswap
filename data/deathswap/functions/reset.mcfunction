scoreboard players set game_state game_state 0
scoreboard players set elapsed timer 0
scoreboard players set seconds timer 0
execute if score playerCount playerCount matches 4.. run bossbar set minecraft:red visible false
execute if score playerCount playerCount matches 3.. run bossbar set minecraft:blue visible false
execute if score playerCount playerCount matches 2.. run bossbar set minecraft:green visible false
execute if score playerCount playerCount matches 2.. run bossbar set minecraft:gold visible false
clear @a
gamemode survival @a
scoreboard players set @a deaths 0
team empty Red
team empty Blue
team empty Green
team empty Orange
time set day
gamerule doDaylightCycle false
gamerule doMobSpawning false
gamerule naturalRegeneration true
tag @a remove player
tag @a remove dead
gamerule keepInventory true
