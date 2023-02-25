# Do all the initial setup, such as creating armor stands and setting up scoreboard stuff

data modify storage repairvillager:data init set value 1

scoreboard objectives add summonrepairvillager minecraft.used:minecraft.emerald_block
scoreboard objectives add temp dummy