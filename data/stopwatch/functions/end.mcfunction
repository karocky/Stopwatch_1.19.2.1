gamerule logAdminCommands true
scoreboard objectives remove sw_d
scoreboard objectives remove sw_s
scoreboard objectives remove sw_m
scoreboard objectives remove sw_h
scoreboard objectives remove ath_teleport
tag @a remove stopwatch
tellraw @a [{"text": "タイマーデータパック", "color": "green"}, {"text": " を無効にしました", "color": "white"}]
datapack disable "file/Stopwatch_1.19.2.1"
datapack disable "file/Stopwatch_1.19.2.1.zip"
