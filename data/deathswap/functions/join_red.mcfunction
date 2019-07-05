execute if entity @a[team=Red] run tellraw @s ["",{"text":"there is already a player in this team","color":"red"}]
execute unless entity @a[team=Red] run team join Red @s
title @a actionbar ["",{"selector":"@a[team=Red]"},{"text":" is the Red Player","color":"red"}]
