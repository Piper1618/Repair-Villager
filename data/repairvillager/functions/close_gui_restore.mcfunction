# Restore the data saved by close_gui

data modify entity @s VillagerData set from entity @s ArmorItems[0].tag.VillagerData

data modify entity @s Offers set from entity @s ArmorItems[0].tag.Offers

tag @s remove closingDialog