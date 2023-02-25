execute store result score @s temp run data get storage repairvillager:data repairItems[0].maxUses

execute as @s[scores={temp=1..}] run data modify entity @s Offers.Recipes append from storage repairvillager:data repairItems[0]
tag @s[scores={temp=0}] add dirty


data remove storage repairvillager:data repairItems[0]

execute if data storage repairvillager:data repairItems[0] run function repairvillager:repair_update_farplayer_loop