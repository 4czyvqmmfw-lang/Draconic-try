execute as @s[hasitem={quantity=1, item=bg:basic_fusion_crafting_injector}] if entity @e[type=bg:fusion_c_injector_item, hasitem={item=diamond}, c=4, rm=2, r=5] if entity @e[type=bg:fusion_c_injector_item, hasitem={item=bg:wyvern_core}, c=1, rm=2, r=5] if entity @e[type=bg:fusion_c_injector_item, hasitem={item=bg:draconium_block}, c=1, rm=2, r=5] if entity @e[type=bg:fusion_c_injector_item, hasitem={item=bg:draconic_core}, c=2, rm=2, r=5] run tag @s add bgwfci

execute as @s[tag=bgwfci] run tag @e[type=bg:fusion_c_injector_item, hasitem={item=diamond}, c=4, rm=2, r=5] add de_consumed
execute as @s[tag=bgwfci] run tag @e[type=bg:fusion_c_injector_item, hasitem={item=bg:wyvern_core}, c=1, rm=2, r=5] add de_consumed
execute as @s[tag=bgwfci] run tag @e[type=bg:fusion_c_injector_item, hasitem={item=bg:draconium_block}, c=1, rm=2, r=5] add de_consumed
execute as @s[tag=bgwfci] run tag @e[type=bg:fusion_c_injector_item, hasitem={item=bg:draconic_core}, c=2, rm=2, r=5] add de_consumed

tp @e[tag=de_consumed] ~ -100 ~

replaceitem entity @s[tag=bgwfci] slot.inventory 0 bg:wyvern_fusion_crafting_injector

execute as @s[tag=bgwfci] at @s run particle minecraft:knockback_roar_particle ~~~
execute as @s[tag=bgwfci] at @s run playsound custom.fusion_complete @a ~~~
tag @s remove bgwfci