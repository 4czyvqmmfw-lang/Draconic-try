execute as @s[hasitem={quantity=4, item=bg:draconium_block}] if entity @e[type=bg:fusion_c_injector_item, tag=wyvern_fc_injector, hasitem={item=bg:dragon_heart}, c=1, rm=2, r=5] if entity @e[type=bg:fusion_c_injector_item, tag=wyvern_fc_injector, hasitem={item=bg:draconic_core}, c=6, rm=2, r=5] run tag @s add bgadbci1

execute as @s[tag=bgadbci1] run tag @e[type=bg:fusion_c_injector_item, tag=wyvern_fc_injector, hasitem={item=bg:dragon_heart}, c=1, rm=2, r=5] add de_consumed
execute as @s[tag=bgadbci1] run tag @e[type=bg:fusion_c_injector_item, tag=wyvern_fc_injector, hasitem={item=bg:draconic_core}, c=6, rm=2, r=5] add de_consumed

replaceitem entity @s[tag=bgadbci1] slot.inventory 0 bg:awakened_draconium_block 4

execute as @s[tag=bgadbci1] at @s run particle minecraft:knockback_roar_particle ~~~
execute as @s[tag=bgadbci1] at @s run playsound custom.fusion_complete @a ~~~
tag @s remove bgadbci1


execute as @s[hasitem={quantity=4, item=bg:draconium_block}] if entity @e[type=bg:fusion_c_injector_item, tag=draconic_fc_injector, hasitem={item=bg:dragon_heart}, c=1, rm=2, r=5] if entity @e[type=bg:fusion_c_injector_item, tag=draconic_fc_injector, hasitem={item=bg:draconic_core}, c=6, rm=2, r=5] run tag @s add bgadbci2

execute as @s[tag=bgadbci2] run tag @e[type=bg:fusion_c_injector_item, tag=draconic_fc_injector, hasitem={item=bg:dragon_heart}, c=1, rm=2, r=5] add de_consumed
execute as @s[tag=bgadbci2] run tag @e[type=bg:fusion_c_injector_item, tag=draconic_fc_injector, hasitem={item=bg:draconic_core}, c=6, rm=2, r=5] add de_consumed

replaceitem entity @s[tag=bgadbci2] slot.inventory 0 bg:awakened_draconium_block 4

execute as @s[tag=bgadbci2] at @s run particle minecraft:knockback_roar_particle ~~~
execute as @s[tag=bgadbci2] at @s run playsound custom.fusion_complete @a ~~~
tag @s remove bgadbci2

tp @e[tag=de_consumed] ~ -100 ~