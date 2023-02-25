# This is the update function that runs every tick while there is any player
# close to the repair villager. It searches for any items to pick up and repair.

# Tag this repair villager so we can find it easily when picking up items to repair.
# This is needed because there may be multiple repair villagers in the world.
tag @e remove RepairAgent
tag @s add RepairAgent

# Pick up items to repair
execute unless data entity @s Offers.Recipes[12] anchored feet as @e[type=minecraft:item, distance=0..1.2, nbt={PickupDelay:0s}, limit=4] if data entity @s Thrower at @s run function repairvillager:repair_pickup_1


# Lock any items that have been bought, setting maxUses to 0 so the villager
# can never trade them again even if they refresh their trades.
# I'll do this by moving all the items to a temporary location and then
# copying them back one by one, modifying them as needed.
data modify storage repairvillager:data repairItems set from entity @s Offers.Recipes
data modify entity @s Offers.Recipes set value []
execute if data storage repairvillager:data repairItems[0] run function repairvillager:repair_update_closeplayer_loop