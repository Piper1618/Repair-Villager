# This function gets run as each repair villager.

# repair_update_closeplayer will run every tick if there is a player close by.
# repair_update_farplayer will run once when the last player leaves this range.

execute as @s[tag=!close] if entity @p[distance=0..8] run tag @s add close
execute as @s[tag=close] unless entity @p[distance=0..8] run function repairvillager:repair_update_farplayer

execute as @s[tag=close] run function repairvillager:repair_update_closeplayer