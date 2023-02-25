# This update function runs once when the last player moves away.
# I'll remove all items from the offers list that have been bought back.

tag @s remove close
# The "dirty" tag will be set if any items are removed from the
# villager's offers list.
tag @s remove dirty

# Move the items out of the offers to a temporary data storage place
data modify storage repairvillager:data repairItems set from entity @s Offers.Recipes
data modify entity @s Offers.Recipes set value []

# Transfer the first item back with no checks, since this is the explainer item.
data modify entity @s Offers.Recipes append from storage repairvillager:data repairItems[0]
data remove storage repairvillager:data repairItems[0]

# Loop through the remaining items, transferring them back only if they have not been locked
execute if data storage repairvillager:data repairItems[0] run function repairvillager:repair_update_farplayer_loop

# If we have removed any items from the inventory, forcably close
# the trade dialog. In case the villager wanders off while the
# dialog is open.
execute as @s[tag=dirty] run function repairvillager:close_gui
tag @s remove dirty