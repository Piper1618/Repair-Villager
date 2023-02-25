execute unless data storage repairvillager:data init run function repairvillager:_init

# Restore the data of any villager closing its ui
execute as @e[tag=closingDialog] run function repairvillager:close_gui_restore

# Run the update function for each repair villager
execute as @e[tag=RepairVillager] at @s run function repairvillager:repair_update

# Detect player summoning a new repair villager
execute as @a[scores={summonrepairvillager=1..}] anchored eyes at @s run function repairvillager:summon_1_check