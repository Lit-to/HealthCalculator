execute store result score @s hp_cal run data get entity @s Health
scoreboard players operation @s hp_cal -= var hp_cal
execute if entity @s[scores={hp_cal=0..}] store result entity @s Health float 1 run scoreboard players get @s hp_cal
execute if entity @s[scores={hp_cal=..0}] run tag @s add kill
scoreboard players reset @s hp_cal
#data modify entity @s HurtTime set value 20s
kill @s[tag=kill]

