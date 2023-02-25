# This recursive loop copies items back into the villager's
# inventory, locking their trades if they've already been bought.

#If an item has been bought, lock its trade so it can't possibly be bought again.
execute store result score @s temp run data get storage repairvillager:data repairItems[0].uses
execute as @s[scores={temp=1..}] run data modify storage repairvillager:data repairItems[0].maxUses set value 0

data modify entity @s Offers.Recipes append from storage repairvillager:data repairItems[0]

data remove storage repairvillager:data repairItems[0]

execute if data storage repairvillager:data repairItems[0] run function repairvillager:repair_update_closeplayer_loop