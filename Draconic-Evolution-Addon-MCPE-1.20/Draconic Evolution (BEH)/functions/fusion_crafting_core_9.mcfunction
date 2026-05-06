execute as @s[hasitem={quantity=1, item=bg:wyvern_axe_empty}] if entity @e[type=bg:fusion_c_injector_item, tag=draconic_fc_injector, hasitem={item=bg:awakened_draconium_ingot}, c=2, rm=2, r=5] if entity @e[type=bg:fusion_c_injector_item, tag=draconic_fc_injector, hasitem={item=bg:awakened_core}, c=1, rm=2, r=5] if entity @e[type=bg:fusion_c_injector_item, tag=draconic_fc_injector, hasitem={item=bg:draconic_energy_core}, c=1, rm=2, r=5] run tag @s add bgdaeci

execute as @s[tag=bgdaeci] run tag @e[type=bg:fusion_c_injector_item, tag=draconic_fc_injector, hasitem={item=bg:awakened_draconium_ingot}, c=2, rm=2, r=5] add de_consumed
execute as @s[tag=bgdaeci] run tag @e[type=bg:fusion_c_injector_item, tag=draconic_fc_injector, hasitem={item=bg:awakened_core}, c=1, rm=2, r=5] add de_consumed
execute as @s[tag=bgdaeci] run tag @e[type=bg:fusion_c_injector_item, tag=draconic_fc_injector, hasitem={item=bg:draconic_energy_core}, c=1, rm=2, r=5] add de_consumed

replaceitem entity @s[tag=bgdaeci] slot.inventory 0 bg:draconic_axe_empty

tp @e[tag=de_consumed] ~ -100 ~

execute as @s[tag=bgdaeci] at @s run particle minecraft:knockback_roar_particle ~~~
execute as @s[tag=bgdaeci] at @s run playsound custom.fusion_complete @a ~~~
tag @s remove bgdaeci