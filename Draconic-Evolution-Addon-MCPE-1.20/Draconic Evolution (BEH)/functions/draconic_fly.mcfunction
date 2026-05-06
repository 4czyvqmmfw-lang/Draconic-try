gamerule sendcommandfeedback false
tag @a[hasitem={location=slot.armor.chest, item=bg:draconic_chestplate}] add draconice_fly
ability @a[tag=draconice_fly, hasitem={location=slot.armor.chest, item=bg:draconic_chestplate}] mayfly true
ability @a[tag=draconice_fly, hasitem={location=slot.armor.chest, item=bg:draconic_chestplate, quantity=0}] mayfly false
tag @a[hasitem={location=slot.armor.chest, item=bg:draconic_chestplate, quantity=0}] remove draconice_fly
gamerule sendcommandfeedback true