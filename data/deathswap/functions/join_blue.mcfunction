execute if entity @a[team=Blue] run tellraw @s ["",{"text":"there is already a player in this team","color":"red"}]
execute unless entity @a[team=Blue] run team join Blue @s
title @a actionbar ["",{"selector":"@a[team=Blue]"},{"text":" is the Blue Player","color":"blue"}]