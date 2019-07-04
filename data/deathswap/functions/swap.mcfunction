execute at @a[team=Green] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,CustomName:"\"tele\""}
execute if score spawn settings matches 1 run effect give @a[tag=player] minecraft:resistance 1 255
execute if score spawn settings matches 2 run effect give @a[tag=player] minecraft:resistance 3 255
# two players
tp @a[team=Green] @a[team=Orange,limit=1]
tp @a[team=Orange] @e[name=tele,limit=1]
# three players
tp @a[team=Green] @a[team=Orange,limit=1]
tp @a[team=Orange] @e[team=Blue,limit=1]
tp @a[team=Blue] @e[name=tele,limit=1]
# four players
tp @a[team=Green] @a[team=Orange,limit=1]
tp @a[team=Orange] @e[team=Blue,limit=1]
tp @a[team=Blue] @e[team=Red,limit=1]
tp @a[team=Red] @e[name=tele,limit=1]
# reset/effects
kill @e[name=tele]
function deathswap:timer
tellraw @a ["",{"text":"Swap!","bold":true}]
execute as @a at @s run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~
