#Store the head item in the off-hand slot
item replace entity @s weapon.offhand from entity @s armor.head

#Move the main hand item to the head
item replace entity @s armor.head from entity @s weapon.mainhand

#Move the previous head item from the off-hand to the main hand
item replace entity @s weapon.mainhand from entity @s weapon.offhand

#Clear the temporary off-hand slot item
item replace entity @s weapon.offhand with minecraft:air