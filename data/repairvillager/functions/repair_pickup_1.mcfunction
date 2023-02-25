# Called as any item entity close to a RepairVillager that
# could possibly be picked up.

# An attempt will be made to pick up this item if the temp
# tag is still set by the end of this script.
tag @s add temp

# Don't pick up this item if it is already fully repaired
tag @s[nbt={Item:{tag:{Damage:0}}}] remove temp

# Don't pick up this item if it doesn't have a Damage tag (so it can't be a tool)
execute unless data entity @s Item.tag.Damage run tag @s remove temp

# If the temp tag is still set, attempt to pick up the item.
execute as @s[tag=temp] run function repairvillager:repair_pickup_2