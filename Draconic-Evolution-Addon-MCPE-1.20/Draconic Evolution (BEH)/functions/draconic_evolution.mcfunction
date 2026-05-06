execute as @e[hasitem={item=bg:item_dislocator2}] at @s run tp @e[type=item, r=10] ~~~
execute as @e[hasitem={item=bg:item_dislocator2}] at @s run tp @e[type=xp_orb, r=10] ~~~

execute as @e[hasitem={item=bg:awakened_item_dislocator2}] at @s run tp @e[type=item, r=30] ~~~
execute as @e[hasitem={item=bg:awakened_item_dislocator2}] at @s run tp @e[type=xp_orb, r=30] ~~~

effect @e[hasitem={location=slot.armor.legs, item=bg:wyvern_leggings}] speed 1 0 true
effect @e[hasitem={location=slot.armor.feet, item=bg:wyvern_boots}] jump_boost 1 0 true
execute as @e[hasitem={location=slot.armor.feet,item=bg:wyvern_boots}] as @e[hasitem={location=slot.armor.head,item=bg:wyvern_helmet}] as @e[hasitem={location=slot.armor.chest,item=bg:wyvern_chestplate}] as @e[hasitem={location=slot.armor.legs,item=bg:wyvern_leggings}] at @s run effect @s resistance 1 0 true

effect @e[hasitem={location=slot.armor.head, item=bg:draconic_helmet}] night_vision 11 0 true
effect @e[hasitem={location=slot.armor.legs, item=bg:draconic_leggings}] speed 1 1 true
effect @e[hasitem={location=slot.armor.feet, item=bg:draconic_boots}] jump_boost 1 1 true
execute as @e[hasitem={location=slot.armor.feet,item=bg:draconic_boots}] as @e[hasitem={location=slot.armor.head,item=bg:draconic_helmet}] as @e[hasitem={location=slot.armor.chest,item=bg:draconic_chestplate}] as @e[hasitem={location=slot.armor.legs,item=bg:draconic_leggings}] at @s run effect @s resistance 1 2 true
execute as @e[hasitem={location=slot.armor.feet,item=bg:draconic_boots}] as @e[hasitem={location=slot.armor.head,item=bg:draconic_helmet}] as @e[hasitem={location=slot.armor.chest,item=bg:draconic_chestplate}] as @e[hasitem={location=slot.armor.legs,item=bg:draconic_leggings}] at @s run effect @s fire_resistance 1 0 true

scoreboard objectives add draconic_energy dummy draconic_energy

kill @e[tag=de_consumed, y=-100]