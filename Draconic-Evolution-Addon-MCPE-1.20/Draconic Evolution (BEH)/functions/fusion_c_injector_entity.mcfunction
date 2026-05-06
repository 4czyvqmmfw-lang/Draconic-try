execute if block ~~~ bg:basic_fusion_crafting_injector ["block:rotation"=2] unless entity @e[type=bg:fusion_c_injector_item, r=0.5] run summon bg:fusion_c_injector_item ~~~ 180
execute if block ~~~ bg:wyvern_fusion_crafting_injector ["block:rotation"=2] unless entity @e[type=bg:fusion_c_injector_item, r=0.5] run summon bg:fusion_c_injector_item ~~~ 180
execute if block ~~~ bg:draconic_fusion_crafting_injector ["block:rotation"=2] unless entity @e[type=bg:fusion_c_injector_item, r=0.5] run summon bg:fusion_c_injector_item ~~~ 180

execute if block ~~~ bg:basic_fusion_crafting_injector ["block:rotation"=3] unless entity @e[type=bg:fusion_c_injector_item, r=0.5] run summon bg:fusion_c_injector_item ~~~
execute if block ~~~ bg:wyvern_fusion_crafting_injector ["block:rotation"=3] unless entity @e[type=bg:fusion_c_injector_item, r=0.5] run summon bg:fusion_c_injector_item ~~~
execute if block ~~~ bg:draconic_fusion_crafting_injector ["block:rotation"=3] unless entity @e[type=bg:fusion_c_injector_item, r=0.5] run summon bg:fusion_c_injector_item ~~~

execute if block ~~~ bg:basic_fusion_crafting_injector ["block:rotation"=4] unless entity @e[type=bg:fusion_c_injector_item, r=0.5] run summon bg:fusion_c_injector_item ~~~ 90
execute if block ~~~ bg:wyvern_fusion_crafting_injector ["block:rotation"=4] unless entity @e[type=bg:fusion_c_injector_item, r=0.5] run summon bg:fusion_c_injector_item ~~~ 90
execute if block ~~~ bg:draconic_fusion_crafting_injector ["block:rotation"=4] unless entity @e[type=bg:fusion_c_injector_item, r=0.5] run summon bg:fusion_c_injector_item ~~~ 90

execute if block ~~~ bg:basic_fusion_crafting_injector ["block:rotation"=5] unless entity @e[type=bg:fusion_c_injector_item, r=0.5] run summon bg:fusion_c_injector_item ~~~ -90
execute if block ~~~ bg:wyvern_fusion_crafting_injector ["block:rotation"=5] unless entity @e[type=bg:fusion_c_injector_item, r=0.5] run summon bg:fusion_c_injector_item ~~~ -90
execute if block ~~~ bg:draconic_fusion_crafting_injector ["block:rotation"=5] unless entity @e[type=bg:fusion_c_injector_item, r=0.5] run summon bg:fusion_c_injector_item ~~~ -90

execute as @e[type=bg:fusion_c_injector_item, r=0.5] if block ~~~ bg:basic_fusion_crafting_injector run tag @s add basic_fc_injector
execute as @e[type=bg:fusion_c_injector_item, r=0.5] if block ~~~ bg:draconic_fusion_crafting_injector run tag @s add draconic_fc_injector
execute as @e[type=bg:fusion_c_injector_item, r=0.5] if block ~~~ bg:wyvern_fusion_crafting_injector run tag @s add wyvern_fc_injector