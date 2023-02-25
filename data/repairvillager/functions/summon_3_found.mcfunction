# I found the blocks, now check they are correct.
# summonrepairvillager is now being used for conditional
# checks to ensure the required blocks are present. Setting
# it to negative values will escape the recursive search
# algorithm after I return.

scoreboard players set @s summonrepairvillager -1

# Check for emerald block
execute if block ~ ~ ~ minecraft:emerald_block run scoreboard players set @s summonrepairvillager -2

# Check for any kind of anvil below emerald block
execute as @s[scores={summonrepairvillager=-2}] if block ~ ~-1 ~ #minecraft:anvil run scoreboard players set @s summonrepairvillager -3

# Check for air above emerald block
execute as @s[scores={summonrepairvillager=-3}] if block ~ ~1 ~ minecraft:air run scoreboard players set @s summonrepairvillager -4

# If summonrepairvillager == -4 then I should summon the villager
execute as @s[scores={summonrepairvillager=-4}] run setblock ~ ~ ~ minecraft:air replace
execute as @s[scores={summonrepairvillager=-4}] positioned ~0.5 ~ ~0.5 run function repairvillager:repair_spawn