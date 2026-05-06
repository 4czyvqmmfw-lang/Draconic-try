execute as @s[hasitem={quantity=1, item=nether_star}] if entity @e[type=bg:fusion_c_injector_item, tag=draconic_fc_injector, hasitem={item=bg:awakened_draconium_ingot}, c=5, rm=2, r=5] if entity @e[type=bg:fusion_c_injector_item, tag=draconic_fc_injector, hasitem={item=bg:wyvern_core}, c=4, rm=2, r=5] run tag @s add bgacci

execute as @s[tag=bgacci] run tag @e[type=bg:fusion_c_injector_item, tag=draconic_fc_injector, hasitem={item=bg:awakened_draconium_ingot}, c=5, rm=2, r=5] add de_consumed
execute as @s[tag=bgacci] run tag @e[type=bg:fusion_c_injector_item, tag=draconic_fc_injector, hasitem={item=bg:wyvern_core}, c=4, rm=2, r=5] add de_consumed

tp @e[tag=de_consumed] ~ -100 ~

replaceitem entity @s[tag=bgacci] slot.inventory 0 bg:awakened_core

execute as @s[tag=bgacci] at @s run particle minecraft:knockback_roar_particle ~~~
execute as @s[tag=bgacci] at @s run playsound custom.fusion_complete @a ~~~
tag @s remove bgacci