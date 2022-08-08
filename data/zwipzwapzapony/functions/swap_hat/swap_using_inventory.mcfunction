#Store the head item in the 26th inventory slot
item replace entity @s inventory.25 from entity @s armor.head

#Move the hand item to the head
item replace entity @s armor.head from entity @s weapon.mainhand

#Move the previous head item from the inventory to the hand
item replace entity @s weapon.mainhand from entity @s inventory.25

#Clear the temporary inventory slot item
item replace entity @s inventory.25 with minecraft:air