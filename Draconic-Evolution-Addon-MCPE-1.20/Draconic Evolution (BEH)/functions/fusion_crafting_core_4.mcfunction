execute as @s[hasitem={quantity=1, item=bg:dislocator}] if entity @e[type=bg:fusion_c_injector_item, tag=wyvern_fc_injector, hasitem={item=bg:draconium_ingot}, c=4, rm=2, r=5] if entity @e[type=bg:fusion_c_injector_item, tag=wyvern_fc_injector, hasitem={item=bg:wyvern_core}, c=1, rm=2, r=5] if entity @e[type=bg:fusion_c_injector_item, tag=wyvern_fc_injector, hasitem={item=ender_pearl}, c=3, rm=2, r=5] run tag @s add bgadci1

execute as @s[tag=bgadci1] run tag @e[type=bg:fusion_c_injector_item, tag=wyvern_fc_injector, hasitem={item=bg:draconium_ingot}, c=4, rm=2, r=5] add de_consumed
execute as @s[tag=bgadci1] run tag @e[type=bg:fusion_c_injector_item, tag=wyvern_fc_injector, hasitem={item=bg:wyvern_core}, c=1, rm=2, r=5] add de_consumed
execute as @s[tag=bgadci1] run tag @e[type=bg:fusion_c_injector_item, tag=wyvern_fc_injector, hasitem={item=ender_pearl}, c=3, rm=2, r=5] add de_consumed

replaceitem entity @s[tag=bgadci1] slot.inventory 0 bg:advanced_dislocator

execute as @s[tag=bgadci1] at @s run particle minecraft:knockback_roar_particle ~~~
execute as @s[tag=bgadci1] at @s run playsound custom.fusion_complete @a ~~~
tag @s remove bgadci1


execute as @s[hasitem={quantity=1, item=bg:dislocator}] if entity @e[type=bg:fusion_c_injector_item, tag=draconic_fc_injector, hasitem={item=bg:draconium_ingot}, c=4, rm=2, r=5] if entity @e[type=bg:fusion_c_injector_item, tag=draconic_fc_injector, hasitem={item=bg:wyvern_core}, c=1, rm=2, r=5] if entity @e[type=bg:fusion_c_injector_item, tag=draconic_fc_injector, hasitem={item=ender_pearl}, c=3, rm=2, r=5] run tag @s add bgadci2

execute as @s[tag=bgadci2] run tag @e[type=bg:fusion_c_injector_item, tag=draconic_fc_injector, hasitem={item=bg:draconium_ingot}, c=4, rm=2, r=5] add de_consumed
execute as @s[tag=bgadci2] run tag @e[type=bg:fusion_c_injector_item, tag=draconic_fc_injector, hasitem={item=bg:wyvern_core}, c=1, rm=2, r=5] add de_consumed
execute as @s[tag=bgadci2] run tag @e[type=bg:fusion_c_injector_item, tag=draconic_fc_injector, hasitem={item=ender_pearl}, c=3, rm=2, r=5] add de_consumed

replaceitem entity @s[tag=bgadci2] slot.inventory 0 bg:advanced_dislocator

execute as @s[tag=bgadci2] at @s run particle minecraft:knockback_roar_particle ~~~
execute as @s[tag=bgadci2] at @s run playsound custom.fusion_complete @a ~~~
tag @s remove bgadci2

tp @e[tag=de_consumed] ~ -100 ~