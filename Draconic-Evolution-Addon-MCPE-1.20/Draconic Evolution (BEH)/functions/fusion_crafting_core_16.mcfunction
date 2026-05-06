execute as @s[hasitem={quantity=1, item=bg:draconic_pickaxe_empty}] if entity @e[type=bg:fusion_c_injector_item, tag=draconic_fc_injector, hasitem={item=bg:awakened_draconium_ingot}, c=5, rm=2, r=5] if entity @e[type=bg:fusion_c_injector_item, tag=draconic_fc_injector, hasitem={item=bg:awakened_core}, c=1, rm=2, r=5] if entity @e[type=bg:fusion_c_injector_item, tag=draconic_fc_injector, hasitem={item=bg:draconic_sword_empty}, c=1, rm=2, r=5] if entity @e[type=bg:fusion_c_injector_item, tag=draconic_fc_injector, hasitem={item=bg:draconic_shovel_empty}, c=1, rm=2, r=5] run tag @s add bgspeci

execute as @s[tag=bgspeci] run tag @e[type=bg:fusion_c_injector_item, tag=draconic_fc_injector, hasitem={item=bg:awakened_draconium_ingot}, c=5, rm=2, r=5] add de_consumed
execute as @s[tag=bgspeci] run tag @e[type=bg:fusion_c_injector_item, tag=draconic_fc_injector, hasitem={item=bg:awakened_core}, c=1, rm=2, r=5] add de_consumed
execute as @s[tag=bgspeci] run tag @e[type=bg:fusion_c_injector_item, tag=draconic_fc_injector, hasitem={item=bg:draconic_sword_empty}, c=1, rm=2, r=5] add de_consumed
execute as @s[tag=bgspeci] run tag @e[type=bg:fusion_c_injector_item, tag=draconic_fc_injector, hasitem={item=bg:draconic_shovel_empty}, c=1, rm=2, r=5] add de_consumed

replaceitem entity @s[tag=bgspeci] slot.inventory 0 bg:draconic_staff_of_power_empty

tp @e[tag=de_consumed] ~ -100 ~

execute as @s[tag=bgspeci] at @s run particle minecraft:knockback_roar_particle ~~~
execute as @s[tag=bgspeci] at @s run playsound custom.fusion_complete @a ~~~
tag @s remove bgspeci