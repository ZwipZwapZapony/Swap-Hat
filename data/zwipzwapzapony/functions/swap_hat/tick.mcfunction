#If the player has used "/trigger SwapHat", swap their hand and head items
execute as @a[scores={SwapHat=1..}] run function zwipzwapzapony:swap_hat/swap_hat

#Allow the player to use "/trigger SwapHat"
scoreboard players enable @a SwapHat