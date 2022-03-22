execute store result score @s ScoreToHealth run data get entity @s Health
execute unless score var hp_cal = var hp_cal run tellraw @a[team=op] [{"text": "定数が設定されていません。","color": "red"},{"text": "("},{"selector":"@s"},{"text": ")"}]
execute if score var hp_cal = var hp_cal run function hp_cal:add

scoreboard players operation @s ScoreToHealth *= 100 number

