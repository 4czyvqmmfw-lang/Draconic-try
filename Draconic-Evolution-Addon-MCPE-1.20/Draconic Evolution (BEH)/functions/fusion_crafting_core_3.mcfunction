execute as @s[hasitem={quantity=1, item=bg:wyvern_fusion_crafting_injector}] if entity @e[type=bg:fusion_c_injector_item, tag=wyvern_fc_injector, hasitem={item=bg:awakened_draconium_block}, c=1, rm=2, r=5] if entity @e[type=bg:fusion_c_injector_item, tag=wyvern_fc_injector, hasitem={item=bg:wyvern_core}, c=2, rm=2, r=5] if entity @e[type=bg:fusion_c_injector_item, tag=wyvern_fc_injector, hasitem={item=diamond}, c=4, rm=2, r=5] run tag @s add bgdfci1

execute as @s[tag=bgdfci1] run tag @e[type=bg:fusion_c_injector_item, tag=wyvern_fc_injector, hasitem={item=bg:awakened_draconium_block}, c=1, rm=2, r=5] add de_consumed
execute as @s[tag=bgdfci1] run tag @e[type=bg:fusion_c_injector_item, tag=wyvern_fc_injector, hasitem={item=bg:wyvern_core}, c=2, rm=2, r=5] add de_consumed
execute as @s[tag=bgdfci1] run tag @e[type=bg:fusion_c_injector_item, tag=wyvern_fc_injector, hasitem={item=diamond}, c=4, rm=2, r=5] add de_consumed

replaceitem entity @s[tag=bgdfci1] slot.inventory 0 bg:draconic_fusion_crafting_injector

execute as @s[tag=bgdfci1] at @s run particle minecraft:knockback_roar_particle ~~~
execute as @s[tag=bgdfci1] at @s run playsound custom.fusion_complete @a ~~~
tag @s remove bgdfci1


execute as @s[hasitem={quantity=1, item=bg:wyvern_fusion_crafting_injector}] if entity @e[type=bg:fusion_c_injector_item, tag=draconic_fc_injector, hasitem={item=bg:awakened_draconium_block}, c=1, rm=2, r=5] if entity @e[type=bg:fusion_c_injector_item, tag=draconic_fc_injector, hasitem={item=bg:wyvern_core}, c=2, rm=2, r=5] if entity @e[type=bg:fusion_c_injector_item, tag=draconic_fc_injector, hasitem={item=diamond}, c=4, rm=2, r=5] run tag @s add bgdfci2

execute as @s[tag=bgdfci2] run tag @e[type=bg:fusion_c_injector_item, tag=draconic_fc_injector, hasitem={item=bg:awakened_draconium_block}, c=1, rm=2, r=5] add de_consumed
execute as @s[tag=bgdfci2] run tag @e[type=bg:fusion_c_injector_item, tag=draconic_fc_injector, hasitem={item=bg:wyvern_core}, c=2, rm=2, r=5] add de_consumed
execute as @s[tag=bgdfci2] run tag @e[type=bg:fusion_c_injector_item, tag=draconic_fc_injector, hasitem={item=diamond}, c=4, rm=2, r=5] add de_consumed

replaceitem entity @s[tag=bgdfci2] slot.inventory 0 bg:draconic_fusion_crafting_injector

execute as @s[tag=bgdfci2] at @s run particle minecraft:knockback_roar_particle ~~~
execute as @s[tag=bgdfci2] at @s run playsound custom.fusion_complete @a ~~~
tag @s remove bgdfci2

tp @e[tag=de_consumed] ~ -100 ~