# Modifies the item in the given item slot

#tellraw @s "Reached modifier"

$execute unless items entity @s $(path).$(slot) *[minecraft:unbreakable] run item modify entity @s $(path).$(slot) clozent.no_durability:make_unbreakable