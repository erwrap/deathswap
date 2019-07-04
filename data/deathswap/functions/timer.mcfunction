scoreboard players set timer timer 0
scoreboard players set elapsed timer 0
scoreboard players set seconds timer 0
execute as @e[type=minecraft:armor_stand,name=0,sort=random,limit=1] run execute as @s[tag=on] run scoreboard players add timer timer 1
execute as @e[type=minecraft:armor_stand,name=1,sort=random,limit=1] run execute as @s[tag=on] run scoreboard players add timer timer 2
execute as @e[type=minecraft:armor_stand,name=2,sort=random,limit=1] run execute as @s[tag=on] run scoreboard players add timer timer 4
execute as @e[type=minecraft:armor_stand,name=3,sort=random,limit=1] run execute as @s[tag=on] run scoreboard players add timer timer 8
execute as @e[type=minecraft:armor_stand,name=4,sort=random,limit=1] run execute as @s[tag=on] run scoreboard players add timer timer 16
execute as @e[type=minecraft:armor_stand,name=5,sort=random,limit=1] run execute as @s[tag=on] run scoreboard players add timer timer 32
execute as @e[type=minecraft:armor_stand,name=6,sort=random,limit=1] run execute as @s[tag=on] run scoreboard players add timer timer 64
execute as @e[type=minecraft:armor_stand,name=7,sort=random,limit=1] run execute as @s[tag=on] run scoreboard players add timer timer 128
scoreboard players operation timer timer *= spread timer
scoreboard players operation timer timer += start timer