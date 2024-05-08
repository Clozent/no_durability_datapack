# Starts the the functions that will iterate on the item slots.
# This is done by creating an array with the length of the number of slots to iterate on.

#tellraw @s "Reached initiator"

# 9 slots
$data modify storage clozent.no_durability:player_data "$(UUID)".hotbar.arr set value [1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b]
$data modify storage clozent.no_durability:player_data "$(UUID)".hotbar.path set value "hotbar"
$function clozent.no_durability:iterate_slots { UUID: "$(UUID)", path: "hotbar"}

# 27 slots
$data modify storage clozent.no_durability:player_data "$(UUID)".inventory.arr set value [1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b]
$data modify storage clozent.no_durability:player_data "$(UUID)".inventory.path set value "inventory"
$function clozent.no_durability:iterate_slots { UUID: "$(UUID)", path: "inventory"}

# 54 slots
$data modify storage clozent.no_durability:player_data "$(UUID)".container.arr set value [1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b]
$data modify storage clozent.no_durability:player_data "$(UUID)".container.path set value "container"
$function clozent.no_durability:iterate_slots { UUID: "$(UUID)", path: "container"}

# 27 slots
$data modify storage clozent.no_durability:player_data "$(UUID)".enderchest.arr set value [1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b]
$data modify storage clozent.no_durability:player_data "$(UUID)".enderchest.path set value "enderchest"
$function clozent.no_durability:iterate_slots { UUID: "$(UUID)", path: "enderchest"}

# 15 slots
$data modify storage clozent.no_durability:player_data "$(UUID)".horse.arr set value [1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b, 1b]
$data modify storage clozent.no_durability:player_data "$(UUID)".horse.path set value "horse"
$function clozent.no_durability:iterate_slots { UUID: "$(UUID)", path: "horse"}

# Miscellaneous slots, no need for iterator.
function clozent.no_durability:modify_slot { path: "armor", slot: "head"}
function clozent.no_durability:modify_slot { path: "armor", slot: "chest"}
function clozent.no_durability:modify_slot { path: "armor", slot: "legs"}
function clozent.no_durability:modify_slot { path: "armor", slot: "feet"}
function clozent.no_durability:modify_slot { path: "armor", slot: "body"}
function clozent.no_durability:modify_slot { path: "weapon", slot: "offhand"}

#tellraw @s "Finished initiator"