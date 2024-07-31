# Handles the breakable_item_in_inventory advancement, revoking it for future triggers.

#tellraw @s "Reached handler"

advancement revoke @s only clozent.no_durability:detect/breakable_item_in_inventory

function clozent.no_durability:initiate_modifiers with entity @s

#tellraw @s "Finished handler"