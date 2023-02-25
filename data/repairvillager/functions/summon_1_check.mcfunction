# Player has placed an emerald block. Check to see if we have
# the conditions to summon a villager.

# The summonrepairvillager scoreboard value is now being
# used to limit the search scope.

scoreboard players set @s summonrepairvillager 30

function repairvillager:summon_2_search_step

scoreboard players set @s summonrepairvillager 0