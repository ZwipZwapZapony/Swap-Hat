#Store the head item in the 26th Ender Chest slot
item replace entity @s enderchest.25 from entity @s armor.head

#Move the hand item to the head
item replace entity @s armor.head from entity @s weapon.mainhand

#Move the previous head item from the Ender Chest to the hand
item replace entity @s weapon.mainhand from entity @s enderchest.25

#Clear the temporary Ender Chest slot item
item replace entity @s enderchest.25 with minecraft:air