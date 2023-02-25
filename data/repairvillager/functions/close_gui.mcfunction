# Call as a villager to forcably close the gui in case a player has it open.
# This is needed if we make changes to the villager's inventory, such as with "/data entity ...".
# Otherwise, the gui becomes desynced.

# The only way I know to force this is the clear the villager's profession, which
# can have unexpected side effects. This can include Minecraft giving the villager
# a new profession and overwriting some of the data I need. So I'm going to copy
# the data I need somewhere safe so I can restore it next tick even if Minecraft
# does something unexpected.

# I store the data in the "tag" tag of an item (the emerald) stored in an armor slot.
# The item is never displayed and provides no armor value, but is stable and the "tag"
# tag can store any data (it doesn't get automatically sanitized the way most other nbt
# tags do).

# I have to wait a tick before restoring the profession and other data, so it's
# necessary to store the data somewhere safe between ticks.

data modify entity @s ArmorItems[0] set value {id:"minecraft:emerald", Count:1b, tag:{}}
data modify entity @s ArmorItems[0].tag.Offers set value {}
data modify entity @s ArmorItems[0].tag.Offers set from entity @s Offers
data modify entity @s ArmorItems[0].tag.VillagerData set from entity @s VillagerData
data modify entity @s ArmorDropChances[0] set value 0f
# Set the closingDialog tag so the data will be restored next tick.
tag @s add closingDialog
data modify entity @s VillagerData.profession set value "minecraft:none"