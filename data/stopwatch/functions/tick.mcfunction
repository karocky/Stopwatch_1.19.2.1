#start
execute as @a positioned as @s if block ~ ~-1 ~ #stopwatch:start run function stopwatch:start
#stop
execute as @a[tag=stopwatch] positioned as @s if block ~ ~-1 ~ #stopwatch:stop run tag @s remove stopwatch
#timer
execute as @a[scores={sw_d=0..9,sw_s=0..9,sw_m=0..9}] run title @s actionbar [{"score": {"name": "@s", "objective": "sw_h"}}, {"text": ":0"}, {"score": {"name": "@s", "objective": "sw_m"}}, {"text": "'0"}, {"score": {"name": "@s", "objective": "sw_s"}}, {"text": "''0"}, {"score": {"name": "@s", "objective": "sw_d"}}]
execute as @a[scores={sw_d=10..,sw_s=0..9,sw_m=0..9}] run title @s actionbar [{"score": {"name": "@s", "objective": "sw_h"}}, {"text": ":0"}, {"score": {"name": "@s", "objective": "sw_m"}}, {"text": "'0"}, {"score": {"name": "@s", "objective": "sw_s"}}, {"text": "''"}, {"score": {"name": "@s", "objective": "sw_d"}}]
execute as @a[scores={sw_d=0..9,sw_s=10..,sw_m=0..9}] run title @s actionbar [{"score": {"name": "@s", "objective": "sw_h"}}, {"text": ":0"}, {"score": {"name": "@s", "objective": "sw_m"}}, {"text": "'"}, {"score": {"name": "@s", "objective": "sw_s"}}, {"text": "''0"}, {"score": {"name": "@s", "objective": "sw_d"}}]
execute as @a[scores={sw_d=10..,sw_s=10..,sw_m=0..9}] run title @s actionbar [{"score": {"name": "@s", "objective": "sw_h"}}, {"text": ":0"}, {"score": {"name": "@s", "objective": "sw_m"}}, {"text": "'"}, {"score": {"name": "@s", "objective": "sw_s"}}, {"text": "''"}, {"score": {"name": "@s", "objective": "sw_d"}}]
execute as @a[scores={sw_d=0..9,sw_s=0..9,sw_m=10..}] run title @s actionbar [{"score": {"name": "@s", "objective": "sw_h"}}, {"text": ":"}, {"score": {"name": "@s", "objective": "sw_m"}}, {"text": "'0"}, {"score": {"name": "@s", "objective": "sw_s"}}, {"text": "''0"}, {"score": {"name": "@s", "objective": "sw_d"}}]
execute as @a[scores={sw_d=10..,sw_s=0..9,sw_m=10..}] run title @s actionbar [{"score": {"name": "@s", "objective": "sw_h"}}, {"text": ":"}, {"score": {"name": "@s", "objective": "sw_m"}}, {"text": "'0"}, {"score": {"name": "@s", "objective": "sw_s"}}, {"text": "''"}, {"score": {"name": "@s", "objective": "sw_d"}}]
execute as @a[scores={sw_d=0..9,sw_s=10..,sw_m=10..}] run title @s actionbar [{"score": {"name": "@s", "objective": "sw_h"}}, {"text": ":"}, {"score": {"name": "@s", "objective": "sw_m"}}, {"text": "'"}, {"score": {"name": "@s", "objective": "sw_s"}}, {"text": "''0"}, {"score": {"name": "@s", "objective": "sw_d"}}]
execute as @a[scores={sw_d=10..,sw_s=10..,sw_m=10..}] run title @s actionbar [{"score": {"name": "@s", "objective": "sw_h"}}, {"text": ":"}, {"score": {"name": "@s", "objective": "sw_m"}}, {"text": "'"}, {"score": {"name": "@s", "objective": "sw_s"}}, {"text": "''"}, {"score": {"name": "@s", "objective": "sw_d"}}]
scoreboard players add @a[tag=stopwatch] sw_d 5
execute as @a[tag=stopwatch] if score @s sw_d matches 100.. run scoreboard players add @s sw_s 1
execute as @a[tag=stopwatch] if score @s sw_d matches 100.. run scoreboard players set @s sw_d 0
execute as @a[tag=stopwatch] if score @s sw_s matches 60.. run scoreboard players add @s sw_m 1
execute as @a[tag=stopwatch] if score @s sw_s matches 60.. run scoreboard players set @s sw_s 0
execute as @a[tag=stopwatch] if score @s sw_m matches 60.. run scoreboard players add @s sw_h 1
execute as @a[tag=stopwatch] if score @s sw_m matches 60.. run scoreboard players set @s sw_m 0
#teleport
#teleport @a[scores={ath_teleport=1..}] 0 0 0
#scoreboard players reset @a ath_teleport
