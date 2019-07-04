# for every player, add 1 to playerCount
execute as @a run scoreboard players add playerCount playerCount 1
# join random teams based on player count
execute if score playerCount playerCount matches 1 run tellraw @a ["",{"text":"There must be at least two players on the server!","color":"red"}]
execute if score playerCount playerCount matches 2 run execute unless entity @a[team=Green] run team join Green @r[team=!Orange,team=!Blue]
execute if score playerCount playerCount matches 2 run execute unless entity @a[team=Orange] run team join Orange @r[team=!Green,team=!Blue]
execute if score playerCount playerCount matches 3 run execute unless entity @a[team=Orange,team=Green] run team join Blue @r[team=!Orange,team=!Green]
# can't start if player not in team (two players)
execute if score playerCount playerCount matches 2 run execute unless entity @a[team=Orange] run tellraw @s ["",{"text":"There is no "},{"text":"Orange","color":"gold"},{"text":" player!","color":"none"}]
execute if score playerCount playerCount matches 2 run execute unless entity @a[team=Green] run tellraw @s ["",{"text":"There is no "},{"text":"Green","color":"green"},{"text":" player!","color":"none"}]
# can't start if player not in team (three players)
execute if score playerCount playerCount matches 3 run execute unless entity @a[team=Orange] run tellraw @s ["",{"text":"There is no "},{"text":"Orange","color":"gold"},{"text":" player!","color":"none"}]
execute if score playerCount playerCount matches 3 run execute unless entity @a[team=Green] run tellraw @s ["",{"text":"There is no "},{"text":"Green","color":"green"},{"text":" player!","color":"none"}]
execute if score playerCount playerCount matches 3 run execute unless entity @a[team=Blue] run tellraw @s ["",{"text":"There is no "},{"text":"Blue","color":"blue"},{"text":" player!","color":"none"}]
# start if the teams are filled based on player count
execute if score playerCount playerCount matches 2 if entity @a[team=Orange] if entity @a[team=Green] run function deathswap:start
execute if score playerCount playerCount matches 3 if entity @a[team=Orange] if entity @a[team=Green] if entity @a[team=Blue] run function deathswap:start