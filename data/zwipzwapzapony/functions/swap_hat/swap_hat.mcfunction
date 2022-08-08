#Check whether the 26th Ender Chest slot is empty, to use that as a temporary slot to hold the head item - 26th because that players are less likely to put an item in the bottom-almost-right slot than in the bottom-right slot
execute unless data entity @s EnderItems[{Slot:25b}] run function zwipzwapzapony:swap_hat/swap_using_ender_chest

#Otherwise, check whether the 26th inventory slot is empty
execute if data entity @s EnderItems[{Slot:25b}] unless data entity @s Inventory[{Slot:34b}] run function zwipzwapzapony:swap_hat/swap_using_inventory

#Otherwise, check whether the off-hand is empty
execute if data entity @s EnderItems[{Slot:25b}] if data entity @s Inventory[{Slot:34b}] unless data entity @s Inventory[{Slot:-106b}] run function zwipzwapzapony:swap_hat/swap_using_offhand

#Otherwise, spawn an Item Frame for the temporary slot - This can fail if the player is somehow in an unloaded chunk, but no item duplication will happen
execute if data entity @s EnderItems[{Slot:25b}] if data entity @s Inventory[{Slot:34b}] if data entity @s Inventory[{Slot:-106b}] run function zwipzwapzapony:swap_hat/swap_using_item_frame

#Reset the "/trigger SwapHat" value
scoreboard players reset @s SwapHat