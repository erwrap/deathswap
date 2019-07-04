# update gamemode
execute if score game_state game_state matches 1 run gamemode survival @a[team=Red]
execute if score game_state game_state matches 1 run gamemode survival @a[team=Blue]
execute if score game_state game_state matches 1 run gamemode survival @a[team=Green]
execute if score game_state game_state matches 1 run gamemode survival @a[team=Orange]
execute if score game_state game_state matches 1 run gamemode spectator @a[team=!Green,team=!Orange,team=!Blue,team=!Red]

# when the game ends
execute if score game_state game_state matches 0 run effect give @a saturation 2 0 true
execute if score game_state game_state matches 0 run function deathswap:trigger
execute if score game_state game_state matches 0 run replaceitem entity @a hotbar.0 written_book{pages:["[\"\",{\"text\":\"      \"},{\"text\":\"Death Swap\",\"bold\":true,\"underlined\":true,\"color\":\"blue\"},{\"text\":\"\\n\\n\",\"color\":\"reset\"},{\"text\":\"Rules\",\"color\":\"red\",\"clickEvent\":{\"action\":\"change_page\",\"value\":2}},{\"text\":\"\\n\",\"color\":\"reset\"},{\"text\":\"Help\",\"color\":\"dark_aqua\",\"clickEvent\":{\"action\":\"change_page\",\"value\":4}},{\"text\":\"\\n\",\"color\":\"reset\"},{\"text\":\"Settings\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"change_page\",\"value\":6}},{\"text\":\"\\n\\n\",\"color\":\"reset\"},{\"text\":\"Join Orange\",\"color\":\"gold\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger triggers set 1\"}},{\"text\":\"\\n\",\"color\":\"reset\"},{\"text\":\"Join Green\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger triggers set 2\"}},{\"text\":\"\\n\",\"color\":\"reset\"},{\"text\":\"Begin!\",\"color\":\"dark_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger triggers set 3\"}},{\"text\":\"\\n\\n\",\"color\":\"reset\"},{\"text\":\"Made by:\\n\",\"color\":\"black\"},{\"text\":\"/u/Maximus3-141\",\"bold\":true,\"color\":\"black\",\"clickEvent\":{\"action\":\"open_url\",\"value\":\"https://www.reddit.com/user/Maximus3-141\"}},{\"text\":\"\\nOriginal Creator:\\n\",\"color\":\"black\"},{\"text\":\"SethBling\",\"bold\":true,\"color\":\"black\",\"clickEvent\":{\"action\":\"open_url\",\"value\":\"https://www.youtube.com/channel/UC8aG3LDTDwNR1UQhSn9uVrw\"}}]","[\"\",{\"text\":\"          \"},{\"text\":\"Rules\",\"bold\":true,\"underlined\":true,\"color\":\"blue\",\"clickEvent\":{\"action\":\"change_page\",\"value\":1}},{\"text\":\"\\n\\nDeathswap is a game where two players duke it out, trying to be the last one alive!\\n\\nPlay begins with both players starting a fresh survival experience, thousands of blocks apart.\",\"color\":\"reset\"}]","{\"text\":\"Randomly, every 30 to 150 seconds, the players will switch positions, without any warning. The aim is to put yourself in a position that would result in your opponent's death, should a swap occur!\"}","[\"\",{\"text\":\"           \"},{\"text\":\"Help\",\"bold\":true,\"underlined\":true,\"color\":\"blue\",\"clickEvent\":{\"action\":\"change_page\",\"value\":1}},{\"text\":\"\\n\\nTo begin a game, simply join a team by clicking on one of the options on the first page of this book. Only one player can be on one team at a time! When both teams are occupied, click begin to start the game! There are several difficulty settings that can be\",\"color\":\"reset\"}]","[\"\",{\"text\":\"toggled to customise your gameplay. Change these with the \"},{\"text\":\"Settings\",\"underlined\":true,\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"change_page\",\"value\":6}},{\"text\":\" button. If there are more than two players in the world, they will be put into spectator mode.\",\"color\":\"reset\"}]","[\"\",{\"text\":\"        \"},{\"text\":\"Settings\",\"bold\":true,\"underlined\":true,\"color\":\"blue\",\"clickEvent\":{\"action\":\"change_page\",\"value\":1}},{\"text\":\"\\n\\nDifficulty: \",\"color\":\"reset\"},{\"text\":\"0\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger triggers set 4\"}},{\"text\":\", \",\"color\":\"reset\"},{\"text\":\"1\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger triggers set 5\"}},{\"text\":\", \",\"color\":\"reset\"},{\"text\":\"2\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger triggers set 6\"}},{\"text\":\", \",\"color\":\"reset\"},{\"text\":\"3\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger triggers set 7\"}},{\"text\":\"\\n\\nMonsters: \",\"color\":\"reset\"},{\"text\":\"On\",\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger triggers set 8\"}},{\"text\":\", \",\"color\":\"reset\"},{\"text\":\"Off\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger triggers set 9\"}},{\"text\":\"\\n\\nRegeneration: \",\"color\":\"reset\"},{\"text\":\"On\",\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger triggers set 10\"}},{\"text\":\", \",\"color\":\"reset\"},{\"text\":\"Off\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger triggers set 11\"}},{\"text\":\"\\n\\nSaturation: \",\"color\":\"reset\"},{\"text\":\"On\",\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger triggers set 12\"}},{\"text\":\", \",\"color\":\"reset\"},{\"text\":\"Off\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger triggers set 13\"}},{\"text\":\"\\n \",\"color\":\"reset\"},{\"text\":\"\\nSafe Spawn: \",\"color\":\"reset\"},{\"text\":\"0s\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger triggers set 14\"}},{\"text\":\", \",\"color\":\"reset\"},{\"text\":\"1s\",\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger triggers set 15\"}},{\"text\":\", \",\"color\":\"reset\"},{\"text\":\"3s\",\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger triggers set 16\"}},{\"text\":\"\\n \",\"color\":\"reset\"}]"],title:DeathSwap,author:"/u/Maximus3-141"} 1

# update bossbar with player's name
bossbar set minecraft:red name {"selector":"@a[team=Red]", "color":"red","bold":true}
bossbar set minecraft:blue name {"selector":"@a[team=Blue]", "color":"blue","bold":true}
bossbar set minecraft:green name {"selector":"@a[team=Green]", "color":"green","bold":true}
bossbar set minecraft:gold name {"selector":"@a[team=Orange]", "color":"gold","bold":true}

#execute if score playerCount playerCount matches 2
#execute if score playerCount playerCount matches 3
#execute if score playerCount playerCount matches 4

# removes then re-adds teams once a player dies.
execute if score game_state game_state matches 1 if score @a deaths matches 1.. run scoreboard players remove playerCount playerCount 1

execute if score game_state game_state matches 1 if score playerCount matches 2.. if score @a[team=Red] deaths matches 1 run tag @s add dead
execute if score game_state game_state matches 1 if score playerCount matches 2.. if score @a[team=Blue] deaths matches 1 run tag @s add dead
execute if score game_state game_state matches 1 if score playerCount matches 2.. if score @a[team=Green] deaths matches 1 run tag @s add dead
execute if score game_state game_state matches 1 if score playerCount matches 2.. if score @a[team=Orange] deaths matches 1 run tag @s add dead

execute if score game_state game_state matches 1 if score playerCount matches 2.. if score @a deaths matches 1.. run team leave @a

execute if score game_state game_state matches 1 if score playerCount playerCount matches 2.. run execute unless entity @a[team=Green] run team join Green @r[team=!Orange,team=!Blue,tag=!dead]
execute if score game_state game_state matches 1 if score playerCount playerCount matches 2.. run execute unless entity @a[team=Orange] run team join Orange @r[team=!Green,team=!Blue,tag=!dead]
execute if score game_state game_state matches 1 if score playerCount playerCount matches 3.. run execute unless entity @a[team=Blue] run team join Blue @r[team=!Orange,team=!Green,tag=!dead]

# other stuff xD
execute if score game_state game_state matches 1 run execute if score timer timer matches 0 run function deathswap:swap
execute if score game_state game_state matches 1 run execute if score timer timer > limit timer run scoreboard players remove timer timer 1
execute if score game_state game_state matches 1 run execute if score timer timer > limit timer run scoreboard players add elapsed timer 1
execute if score game_state game_state matches 1 run execute if score elapsed timer = tickrate timer run scoreboard players add seconds timer 1
execute if score game_state game_state matches 1 run execute if score elapsed timer = tickrate timer run scoreboard players set elapsed timer 1
execute if score game_state game_state matches 1 run execute store result bossbar minecraft:blue value run data get entity @a[team=Green,limit=1] Health
execute if score game_state game_state matches 1 run execute store result bossbar minecraft:green value run data get entity @a[team=Green,limit=1] Health
execute if score game_state game_state matches 1 run execute store result bossbar minecraft:gold value run data get entity @a[team=Orange,limit=1] Health

# ends the game if the last person is remaining.
execute unless score playerCount matches 2.. if score game_state game_state matches 1 run execute if score @a[team=Green,limit=1] deaths matches 1 run function deathswap:end
execute unless score playerCount matches 2.. if score game_state game_state matches 1 run execute if score @a[team=Orange,limit=1] deaths matches 1 run function deathswap:end

# other stuff lmAO
execute if score game_state game_state matches 1 run execute if score saturation settings matches 1 run effect give @e[tag=player] saturation 2 0 true
execute if score game_state game_state matches 1 run execute if score seconds timer < startseconds timer run title @a actionbar ["",{"text":"Time since swap: ","color":"dark_green"},{"score":{"name":"seconds","objective":"timer"},"color":"dark_green"},{"text":"  [Safe]","color":"dark_green"}]
execute if score game_state game_state matches 1 run execute unless score seconds timer < startseconds timer run title @a actionbar ["",{"text":"Time since swap: ","color":"red"},{"score":{"name":"seconds","objective":"timer"},"color":"red"},{"text":"  [Unsafe]","color":"red"}]
execute at @a[tag=victor] run particle minecraft:dust 255 255 255 1 ~ ~1 ~ 0.5 0.5 0.5 1 1 normal @a
kill @e[type=item,nbt={Item:{id:"minecraft:written_book",tag:{title:"DeathSwap"}}}]
