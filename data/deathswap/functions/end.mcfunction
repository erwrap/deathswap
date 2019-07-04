# display victory text (last two players)
execute if score playerCount playerCount matches 2 if score @a[team=Orange,limit=1] deaths matches 1 run title @a subtitle ["",{"text":"Good game ","color":"gold"},{"selector":"@s","color":"gold"}]
execute if score playerCount playerCount matches 2 if score @a[team=Orange,limit=1] deaths matches 1 run title @a title ["",{"selector":"@a[team=Green]","color":"green"},{"text":" Wins!","color":"green"}]
execute if score playerCount playerCount matches 2 if score @a[team=Orange,limit=1] deaths matches 1 run tag @a[team=Green] add victor
execute if score playerCount playerCount matches 2 if score @a[team=Green,limit=1] deaths matches 1 run title @a subtitle ["",{"text":"Good game ","color":"green"},{"selector":"@s","color":"green"}]
execute if score playerCount playerCount matches 2 if score @a[team=Green,limit=1] deaths matches 1 run title @a title ["",{"selector":"@a[team=Orange]","color":"gold"},{"text":" Wins!","color":"gold"}]
execute if score playerCount playerCount matches 2 if score @a[team=Green,limit=1] deaths matches 1 run tag @a[team=Orange] add victor

# playsounds
execute if score @a[team=Green,limit=1] deaths matches 1 run execute as @a[team=!Orange] at @s run playsound minecraft:entity.wither.death player @s ~ ~ ~
execute if score @a[team=Orange,limit=1] deaths matches 1 run execute as @a[team=!Green] at @s run playsound minecraft:entity.wither.death player @s ~ ~ ~
execute if score @a[team=Orange,limit=1] deaths matches 1 run execute as @a[team=Green] at @s run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~

# tele to center/reset game
execute at @e[type=minecraft:armor_stand,name=center] run tp @a ~ ~-9.8 ~
execute at @e[type=minecraft:armor_stand,name=center] run spawnpoint @a ~ ~-9.8 ~
function deathswap:reset
