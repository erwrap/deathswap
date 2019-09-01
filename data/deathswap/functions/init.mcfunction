scoreboard objectives add deaths deathCount
scoreboard objectives add timer dummy
scoreboard objectives add game_state dummy
scoreboard objectives add health health
scoreboard objectives setdisplay list health
scoreboard objectives add settings dummy
scoreboard objectives add playerCount dummy
scoreboard objectives add triggers trigger
scoreboard players set timer timer 0
scoreboard players set spread timer 10
scoreboard players set start timer 600
scoreboard players set startseconds timer 30
scoreboard players set limit timer 0
scoreboard players set tickrate timer 20
scoreboard players set difficulty difficulty 1
scoreboard players set difficulty settings 2
scoreboard players set monsters settings 1
scoreboard players set regen settings 1
scoreboard players set saturation settings 0
scoreboard players set spawn settings 0
team add Red {"text":"Red Player", "color":"blue","bold":true}
team add Blue {"text":"Blue Player","color":"blue","bold":true}
team add Green {"text":"Green Player","color":"green","bold":true}
team add Orange {"text":"Orange Player","color":"gold","bold":true}
team add Purple {"text":"Purple Player","color":"dark_purple","bold":true}
team add Aqua {"text":"Aqua Player","color":"aqua","bold":true}
team add Gray {"text":"Gray Player","color":"gray","bold":true}
team modify Red color red
team modify Blue color blue
team modify Orange color gold
team modify Green color green
team modify Purple color dark_purple
team modify Aqua color aqua
team modify Gray color gray
bossbar add red {"text":"Red Player","color":"red","bold":true}
bossbar add blue {"text":"Blue Player","color":"blue","bold":true}
bossbar add green {"text":"Green Player","color":"green","bold":true}
bossbar add gold {"text":"Orange Player","color":"gold","bold":true}
bossbar set minecraft:red color red
bossbar set minecraft:blue color blue
bossbar set minecraft:green color green
bossbar set minecraft:gold color yellow
bossbar set minecraft:red max 20
bossbar set minecraft:blue max 20
bossbar set minecraft:green max 20
bossbar set minecraft:gold max 20
bossbar set minecraft:red players @a
bossbar set minecraft:blue players @a
bossbar set minecraft:green players @a
bossbar set minecraft:gold players @a
title @a times 20 100 20
difficulty peaceful
gamerule logAdminCommands false
kill @e[type=armor_stand]
tag @a remove victor
execute unless entity @e[type=armor_stand,name=center] run execute at @p run summon minecraft:armor_stand ~ ~10 ~ {NoGravity:1,Invulnerable:1,Invisible:1,CustomName:"\"center\""}
execute at @e[name=center,type=armor_stand] run setworldspawn ~ ~-9.8 ~
execute at @e[name=center,type=armor_stand] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Invulnerable:1,Invisible:1,CustomName:"\"0\""}
execute at @e[name=center,type=armor_stand] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Invulnerable:1,Invisible:1,CustomName:"\"1\""}
execute at @e[name=center,type=armor_stand] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Invulnerable:1,Invisible:1,CustomName:"\"2\""}
execute at @e[name=center,type=armor_stand] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Invulnerable:1,Invisible:1,CustomName:"\"3\""}
execute at @e[name=center,type=armor_stand] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Invulnerable:1,Invisible:1,CustomName:"\"4\""}
execute at @e[name=center,type=armor_stand] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Invulnerable:1,Invisible:1,CustomName:"\"5\""}
execute at @e[name=center,type=armor_stand] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Invulnerable:1,Invisible:1,CustomName:"\"6\""}
execute at @e[name=center,type=armor_stand] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Invulnerable:1,Invisible:1,CustomName:"\"7\""}
execute at @e[name=center,type=armor_stand] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Invulnerable:1,Invisible:1,CustomName:"\"0\"",Tags:["on"]}
execute at @e[name=center,type=armor_stand] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Invulnerable:1,Invisible:1,CustomName:"\"1\"",Tags:["on"]}
execute at @e[name=center,type=armor_stand] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Invulnerable:1,Invisible:1,CustomName:"\"2\"",Tags:["on"]}
execute at @e[name=center,type=armor_stand] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Invulnerable:1,Invisible:1,CustomName:"\"3\"",Tags:["on"]}
execute at @e[name=center,type=armor_stand] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Invulnerable:1,Invisible:1,CustomName:"\"4\"",Tags:["on"]}
execute at @e[name=center,type=armor_stand] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Invulnerable:1,Invisible:1,CustomName:"\"5\"",Tags:["on"]}
execute at @e[name=center,type=armor_stand] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Invulnerable:1,Invisible:1,CustomName:"\"6\"",Tags:["on"]}
execute at @e[name=center,type=armor_stand] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Invulnerable:1,Invisible:1,CustomName:"\"7\"",Tags:["on"]}
function deathswap:reset
tellraw @a ["",{"text":"Datapack Ready!"}]
