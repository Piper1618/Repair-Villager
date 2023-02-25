# Called as an item that is a candidate to be pickup up and
# repaired. This is where we determine the cost of repair.
# If the item has the mending enchantment, the quantity of
# the repair price will be altered in the next script
# unless the noMending tag is set to override that behavior.

# If this data has not been created by the end of this
# script, then the item will be assumed to not be
# repairable by the repairVillager and will not be picked up.
data remove storage repairvillager:data repairItem

# temp is used for if-then logic (such as for special mending items, see wooden pickaxe)
tag @s remove temp

#wooden pickaxe
tag @s[nbt={Item:{id:"minecraft:wooden_pickaxe"}}] add temp
execute as @s[tag=temp] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:wooden_pickaxe", Count:1b},buyB:{},sell:{},maxUses:1}
tag @s[nbt=!{Item:{tag:{Enchantments:[{id:"minecraft:mending"}]}}}] remove temp
execute as @s[tag=temp] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:stick", Count:2b},buyB:{},sell:{},maxUses:1}
tag @s[tag=temp] add noMending
tag @s remove temp

#stone pickaxe
execute as @s[nbt={Item:{id:"minecraft:stone_pickaxe"}}] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:cobblestone", Count:2b},buyB:{},sell:{},maxUses:1}

#golden pickaxe
execute as @s[nbt={Item:{id:"minecraft:golden_pickaxe"}}] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:gold_ingot", Count:2b},buyB:{},sell:{},maxUses:1}

#iron pickaxe
execute as @s[nbt={Item:{id:"minecraft:iron_pickaxe"}}] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:iron_ingot", Count:2b},buyB:{},sell:{},maxUses:1}

#diamond pickaxe
execute as @s[nbt={Item:{id:"minecraft:diamond_pickaxe"}}] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:diamond", Count:2b},buyB:{},sell:{},maxUses:1}

#netherite pickaxe
execute as @s[nbt={Item:{id:"minecraft:netherite_pickaxe"}}] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:netherite_ingot", Count:2b},buyB:{},sell:{},maxUses:1}

#wooden axe
tag @s[nbt={Item:{id:"minecraft:wooden_axe"}}] add temp
execute as @s[tag=temp] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:wooden_axe", Count:1b},buyB:{},sell:{},maxUses:1}
tag @s[nbt=!{Item:{tag:{Enchantments:[{id:"minecraft:mending"}]}}}] remove temp
execute as @s[tag=temp] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:stick", Count:2b},buyB:{},sell:{},maxUses:1}
tag @s[tag=temp] add noMending
tag @s remove temp

#stone axe
execute as @s[nbt={Item:{id:"minecraft:stone_axe"}}] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:cobblestone", Count:2b},buyB:{},sell:{},maxUses:1}

#golden axe
execute as @s[nbt={Item:{id:"minecraft:golden_axe"}}] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:gold_ingot", Count:2b},buyB:{},sell:{},maxUses:1}

#iron axe
execute as @s[nbt={Item:{id:"minecraft:iron_axe"}}] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:iron_ingot", Count:2b},buyB:{},sell:{},maxUses:1}

#diamond axe
execute as @s[nbt={Item:{id:"minecraft:diamond_axe"}}] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:diamond", Count:2b},buyB:{},sell:{},maxUses:1}

#netherite axe
execute as @s[nbt={Item:{id:"minecraft:netherite_axe"}}] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:netherite_ingot", Count:2b},buyB:{},sell:{},maxUses:1}

#wooden shovel
tag @s[nbt={Item:{id:"minecraft:wooden_shovel"}}] add temp
execute as @s[tag=temp] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:wooden_shovel", Count:1b},buyB:{},sell:{},maxUses:1}
tag @s[nbt=!{Item:{tag:{Enchantments:[{id:"minecraft:mending"}]}}}] remove temp
execute as @s[tag=temp] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:stick", Count:2b},buyB:{},sell:{},maxUses:1}
tag @s[tag=temp] add noMending
tag @s remove temp

#stone shovel
execute as @s[nbt={Item:{id:"minecraft:stone_shovel"}}] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:cobblestone", Count:2b},buyB:{},sell:{},maxUses:1}

#golden shovel
execute as @s[nbt={Item:{id:"minecraft:golden_shovel"}}] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:gold_ingot", Count:2b},buyB:{},sell:{},maxUses:1}

#iron shovel
execute as @s[nbt={Item:{id:"minecraft:iron_shovel"}}] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:iron_ingot", Count:2b},buyB:{},sell:{},maxUses:1}

#diamond shovel
execute as @s[nbt={Item:{id:"minecraft:diamond_shovel"}}] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:diamond", Count:2b},buyB:{},sell:{},maxUses:1}

#netherite shovel
execute as @s[nbt={Item:{id:"minecraft:netherite_shovel"}}] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:netherite_ingot", Count:2b},buyB:{},sell:{},maxUses:1}

#wooden hoe
tag @s[nbt={Item:{id:"minecraft:wooden_hoe"}}] add temp
execute as @s[tag=temp] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:wooden_hoe", Count:1b},buyB:{},sell:{},maxUses:1}
tag @s[nbt=!{Item:{tag:{Enchantments:[{id:"minecraft:mending"}]}}}] remove temp
execute as @s[tag=temp] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:stick", Count:2b},buyB:{},sell:{},maxUses:1}
tag @s[tag=temp] add noMending
tag @s remove temp

#stone hoe
execute as @s[nbt={Item:{id:"minecraft:stone_hoe"}}] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:cobblestone", Count:2b},buyB:{},sell:{},maxUses:1}

#golden hoe
execute as @s[nbt={Item:{id:"minecraft:golden_hoe"}}] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:gold_ingot", Count:2b},buyB:{},sell:{},maxUses:1}

#iron hoe
execute as @s[nbt={Item:{id:"minecraft:iron_hoe"}}] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:iron_ingot", Count:2b},buyB:{},sell:{},maxUses:1}

#diamond hoe
execute as @s[nbt={Item:{id:"minecraft:diamond_hoe"}}] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:diamond", Count:2b},buyB:{},sell:{},maxUses:1}

#netherite hoe
execute as @s[nbt={Item:{id:"minecraft:netherite_hoe"}}] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:netherite_ingot", Count:2b},buyB:{},sell:{},maxUses:1}

#wooden sword
tag @s[nbt={Item:{id:"minecraft:wooden_sword"}}] add temp
execute as @s[tag=temp] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:wooden_sword", Count:1b},buyB:{},sell:{},maxUses:1}
tag @s[nbt=!{Item:{tag:{Enchantments:[{id:"minecraft:mending"}]}}}] remove temp
execute as @s[tag=temp] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:stick", Count:2b},buyB:{},sell:{},maxUses:1}
tag @s[tag=temp] add noMending
tag @s remove temp

#stone sword
execute as @s[nbt={Item:{id:"minecraft:stone_sword"}}] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:cobblestone", Count:2b},buyB:{},sell:{},maxUses:1}

#golden sword
execute as @s[nbt={Item:{id:"minecraft:golden_sword"}}] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:gold_ingot", Count:2b},buyB:{},sell:{},maxUses:1}

#iron sword
execute as @s[nbt={Item:{id:"minecraft:iron_sword"}}] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:iron_ingot", Count:2b},buyB:{},sell:{},maxUses:1}

#diamond sword
execute as @s[nbt={Item:{id:"minecraft:diamond_sword"}}] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:diamond", Count:2b},buyB:{},sell:{},maxUses:1}

#netherite sword
execute as @s[nbt={Item:{id:"minecraft:netherite_sword"}}] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:netherite_ingot", Count:2b},buyB:{},sell:{},maxUses:1}

#netherite sword
execute as @s[nbt={Item:{id:"minecraft:netherite_sword"}}] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:netherite_ingot", Count:2b},buyB:{},sell:{},maxUses:1}

#bow
execute as @s[nbt={Item:{id:"minecraft:bow"}}] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:string", Count:3b},buyB:{},sell:{},maxUses:1}

#crossbow
execute as @s[nbt={Item:{id:"minecraft:crossbow"}}] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:iron_ingot", Count:2b},buyB:{},sell:{},maxUses:1}

#shield
tag @s[nbt={Item:{id:"minecraft:shield"}}] add temp
execute as @s[tag=temp] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:iron_ingot", Count:1b},buyB:{},sell:{},maxUses:1}
tag @s[nbt=!{Item:{tag:{Enchantments:[{id:"minecraft:mending"}]}}}] remove temp
execute as @s[tag=temp] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:iron_nugget", Count:4b},buyB:{},sell:{},maxUses:1}
tag @s[tag=temp] add noMending
tag @s remove temp

#leather cap
execute as @s[nbt={Item:{id:"minecraft:leather_helmet"}}] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:leather", Count:2b},buyB:{},sell:{},maxUses:1}

#chainmail helmet
execute as @s[nbt={Item:{id:"minecraft:chainmail_helmet"}}] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:iron_ingot", Count:2b},buyB:{},sell:{},maxUses:1}

#iron helmet
execute as @s[nbt={Item:{id:"minecraft:iron_helmet"}}] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:iron_ingot", Count:2b},buyB:{},sell:{},maxUses:1}

#diamond helmet
execute as @s[nbt={Item:{id:"minecraft:diamond_helmet"}}] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:diamond", Count:2b},buyB:{},sell:{},maxUses:1}

#golden helmet
execute as @s[nbt={Item:{id:"minecraft:golden_helmet"}}] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:gold_ingot", Count:2b},buyB:{},sell:{},maxUses:1}

#netherite helmet
execute as @s[nbt={Item:{id:"minecraft:netherite_helmet"}}] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:netherite_ingot", Count:2b},buyB:{},sell:{},maxUses:1}

#turtle shell
execute as @s[nbt={Item:{id:"minecraft:turtle_helmet"}}] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:scute", Count:2b},buyB:{},sell:{},maxUses:1}

#leather tunic
tag @s[nbt={Item:{id:"minecraft:leather_chestplate"}}] add temp
execute as @s[tag=temp] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:leather", Count:4b},buyB:{},sell:{},maxUses:1}
tag @s[nbt=!{Item:{tag:{Enchantments:[{id:"minecraft:mending"}]}}}] remove temp
execute as @s[tag=temp] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:leather", Count:2b},buyB:{},sell:{},maxUses:2}
tag @s[tag=temp] add noMending
tag @s remove temp

#chainmail chestplate OR iron chestplate
tag @s[nbt={Item:{id:"minecraft:chainmail_chestplate"}}] add temp
tag @s[nbt={Item:{id:"minecraft:iron_chestplate"}}] add temp
execute as @s[tag=temp] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:iron_ingot", Count:4b},buyB:{},sell:{},maxUses:1}
tag @s[nbt=!{Item:{tag:{Enchantments:[{id:"minecraft:mending"}]}}}] remove temp
execute as @s[tag=temp] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:iron_ingot", Count:2b},buyB:{},sell:{},maxUses:2}
tag @s[tag=temp] add noMending
tag @s remove temp

#diamond chestplate
tag @s[nbt={Item:{id:"minecraft:diamond_chestplate"}}] add temp
execute as @s[tag=temp] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:diamond", Count:4b},buyB:{},sell:{},maxUses:1}
tag @s[nbt=!{Item:{tag:{Enchantments:[{id:"minecraft:mending"}]}}}] remove temp
execute as @s[tag=temp] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:diamond", Count:2b},buyB:{},sell:{},maxUses:2}
tag @s[tag=temp] add noMending
tag @s remove temp

#golden chestplate
tag @s[nbt={Item:{id:"minecraft:golden_chestplate"}}] add temp
execute as @s[tag=temp] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:gold_ingot", Count:4b},buyB:{},sell:{},maxUses:1}
tag @s[nbt=!{Item:{tag:{Enchantments:[{id:"minecraft:mending"}]}}}] remove temp
execute as @s[tag=temp] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:gold_ingot", Count:2b},buyB:{},sell:{},maxUses:2}
tag @s[tag=temp] add noMending
tag @s remove temp

#netherite chestplate
tag @s[nbt={Item:{id:"minecraft:netherite_chestplate"}}] add temp
execute as @s[tag=temp] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:netherite_ingot", Count:4b},buyB:{},sell:{},maxUses:1}
tag @s[nbt=!{Item:{tag:{Enchantments:[{id:"minecraft:mending"}]}}}] remove temp
execute as @s[tag=temp] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:netherite_ingot", Count:2b},buyB:{},sell:{},maxUses:2}
tag @s[tag=temp] add noMending
tag @s remove temp

#leather Pants
execute as @s[nbt={Item:{id:"minecraft:leather_leggings"}}] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:leather", Count:3b},buyB:{},sell:{},maxUses:1}

#chainmail leggings
execute as @s[nbt={Item:{id:"minecraft:chainmail_leggings"}}] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:iron_ingot", Count:3b},buyB:{},sell:{},maxUses:1}

#iron leggings
execute as @s[nbt={Item:{id:"minecraft:iron_leggings"}}] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:iron_ingot", Count:3b},buyB:{},sell:{},maxUses:1}

#diamond leggings
execute as @s[nbt={Item:{id:"minecraft:diamond_leggings"}}] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:diamond", Count:3b},buyB:{},sell:{},maxUses:1}

#golden leggings
execute as @s[nbt={Item:{id:"minecraft:golden_leggings"}}] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:gold_ingot", Count:3b},buyB:{},sell:{},maxUses:1}

#netherite leggings
execute as @s[nbt={Item:{id:"minecraft:netherite_leggings"}}] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:netherite_ingot", Count:3b},buyB:{},sell:{},maxUses:1}

#leather boots
execute as @s[nbt={Item:{id:"minecraft:leather_boots"}}] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:leather", Count:2b},buyB:{},sell:{},maxUses:1}

#chainmail boots
execute as @s[nbt={Item:{id:"minecraft:chainmail_boots"}}] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:iron_ingot", Count:2b},buyB:{},sell:{},maxUses:1}

#iron boots
execute as @s[nbt={Item:{id:"minecraft:iron_boots"}}] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:iron_ingot", Count:2b},buyB:{},sell:{},maxUses:1}

#diamond boots
execute as @s[nbt={Item:{id:"minecraft:diamond_boots"}}] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:diamond", Count:2b},buyB:{},sell:{},maxUses:1}

#golden boots
execute as @s[nbt={Item:{id:"minecraft:golden_boots"}}] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:gold_ingot", Count:2b},buyB:{},sell:{},maxUses:1}

#netherite boots
execute as @s[nbt={Item:{id:"minecraft:netherite_boots"}}] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:netherite_ingot", Count:2b},buyB:{},sell:{},maxUses:1}

#fishing rod
execute as @s[nbt={Item:{id:"minecraft:fishing_rod"}}] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:string", Count:2b},buyB:{},sell:{},maxUses:1}

#elytra
execute as @s[nbt={Item:{id:"minecraft:elytra"}}] run data modify storage repairvillager:data repairItem set value {buy:{id:"minecraft:phantom_membrane", Count:2b},buyB:{},sell:{},maxUses:1}

# If one of the segments above created the repairItem data,
# then proceed to the next script for final processing and
# pickup of the item.
execute if data storage repairvillager:data repairItem run function repairvillager:repair_pickup_3