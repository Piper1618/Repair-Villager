# Called as an item that should be picked up and repaired.
# All checks have passes, so by this point, we know this
# item is going to be picked up.

# Copy this item's data to the sell slot of the repair
# trade. Done here because this will be the same for
# all items.
data modify storage repairvillager:data repairItem.sell set from entity @s Item

# Set the quantity of the buy item (only the first slot) to
# 1 if the item has the mending enchantment. This can be
# disabled (such as to set a different, custom, value) by
# setting the noMending tag.
execute as @s[tag=!noMending, nbt={Item:{tag:{Enchantments:[{id:"minecraft:mending"}]}}}] run data modify storage repairvillager:data repairItem.buy.Count set value 1b

# Repair the item by setting its Damage value to 0
data modify storage repairvillager:data repairItem.sell.tag.Damage set value 0

# Copy the prepared trade data to the villager that is picking up the item.
data modify entity @e[tag=RepairAgent, sort=nearest, limit=1] Offers.Recipes append from storage repairvillager:data repairItem

# Destroy the item entity, otherwise the player could pick
# it back up and the item would effectively be duplicated.
kill @s