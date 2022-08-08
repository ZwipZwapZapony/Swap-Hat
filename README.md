**Swap Hat** is a data pack for Minecraft: Java Edition which lets you put any item on your head.

\
1\. [Download the zip file from here.](/../../releases)  
2\. Place it in your world's "datapacks" folder.  
3\. Reload the world (or type `/reload` in the text chat).

Now you can type `/trigger SwapHat` in the text chat to swip-swap items from your main hand to your head!<h2></h2>

\
*How does it work? Can it fail?*<details><summary>\[Click to reveal technical details\]</summary><blockquote>

When the data pack is loaded, it creates a scoreboard objective called `SwapHat`, with a `trigger` criterion.  
Every tick, it enables the trigger for all players, letting them use `/trigger SwapHat` in the text chat.  
Every tick, it also checks whether a player's `SwapHat` score is above zero (caused by triggering it in the text chat). If so, it resets the score, and...

\- Checks whether the player's 26th Ender Chest inventory slot is empty. (Why the 26th? Because that players are less likely to put an item in the bottom-almost-right slot than in the bottom-right slot.)  
\- If not, checks whether the player's 26th survival inventory slot is empty.  
\- If not, checks whether the player's off-hand slot is empty.

If any of those inventory slots are empty, it moves the player's current head item to that slot, their current hand item to the head slot, and their previous head item to the hand slot. This happens without summoning an entity, reducing server overhead slightly.  
Otherwise, it summons a temporary Item Frame to store the previous head item, and kills the Item Frame later in the same tick, leaving no permanent entities or blocks altered in the world.

\
Compatibility-wise, this data pack should be 100% safe and reliable, unless...  
\- You already have/use a scoreboard objective called `SwapHat`.  
\- You have any Item Frame entities tagged (not name-tagged) as `temporary_swap_hat`.  
\- The player is somehow in an unloaded chunk. In this case, if an Item Frame is summoned, it will be summoned below the world, no items will be swapped, and the Item Frame will not be killed. If the chunk is loaded later on, the Item Frame will be killed by the void without doing anything.  
\- You use a mod that loads chunks vertically; if an Item Frame is summoned, it's summoned at a specific Y coordinate (-400,000), which is probably an unloaded area.  
\- You use a mod that removes the inventory slots that this data pack checks for.

If you're unsure what those things mean, it should be 100% reliable for you.</blockquote></details>