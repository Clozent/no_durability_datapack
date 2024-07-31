# Recives:
# UUID - The UUID of the player
# Path - The path to the container

#tellraw @s "Reached iterator"

# Remove an item from the array
$data remove storage clozent.no_durability:player_data "$(UUID)".$(path).arr[0]

# Update the stored length of the array, to be used as the slot to modify.
$data modify storage clozent.no_durability:player_data "$(UUID)".$(path).slot set value 0
$execute store result storage clozent.no_durability:player_data "$(UUID)".$(path).slot int 1 if data storage clozent.no_durability:player_data "$(UUID)".$(path).arr[]

# Run the modification function.
$function clozent.no_durability:modify_slot with storage clozent.no_durability:player_data "$(UUID)".$(path)

# Do recursion for looping.
$execute if data storage clozent.no_durability:player_data "$(UUID)".$(path).arr[] run function clozent.no_durability:iterate_slots { UUID: $(UUID), path: $(path)}