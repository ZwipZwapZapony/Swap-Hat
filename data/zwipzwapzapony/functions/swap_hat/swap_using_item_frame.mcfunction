#Summon a temporary Item Frame below the world
execute at @s run summon minecraft:item_frame ~ -400000 ~ {Tags:["temporary_swap_hat"]}

#Store the head item in the Item Frame
item replace entity @e[tag=temporary_swap_hat,type=minecraft:item_frame] container.0 from entity @s armor.head

#Move the hand item to the head - Check if the Item Frame exists first, to avoid item duplication exploits if the Item Frame is in an unloaded chunk
execute if entity @e[tag=temporary_swap_hat,type=minecraft:item_frame] run item replace entity @s armor.head from entity @s weapon.mainhand

#Move the previous head item from the Item Frame to the hand
item replace entity @s weapon.mainhand from entity @e[limit=1,tag=temporary_swap_hat,type=minecraft:item_frame] container.0

#Kill the Item Frame
kill @e[tag=temporary_swap_hat,type=minecraft:item_frame]