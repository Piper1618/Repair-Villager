# Step forward recursively, looking for the blocks to spawn a villager at

execute align xyz if block ~ ~ ~ minecraft:emerald_block run function repairvillager:summon_3_found
execute align xyz if block ~ ~ ~ #minecraft:anvil positioned ~ ~1 ~ run function repairvillager:summon_3_found

scoreboard players remove @s summonrepairvillager 1

execute as @s[scores={summonrepairvillager=1..}] positioned ^ ^ ^0.2 run function repairvillager:summon_2_search_step