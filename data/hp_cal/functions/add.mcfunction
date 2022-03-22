scoreboard players operation @s ScoreToHealth += var hp_cal

execute if score @s[type=player] ScoreToHealth matches ..0 at @s run kill @s
execute if score @s[type=!player] ScoreToHealth matches ..0 at @s run tp @s ~ -120 ~
#scoreboard players reset var hp_cal
