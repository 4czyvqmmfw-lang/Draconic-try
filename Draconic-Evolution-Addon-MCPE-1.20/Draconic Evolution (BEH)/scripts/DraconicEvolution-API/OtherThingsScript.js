import * as mc from '@minecraft/server';

mc.world.afterEvents.itemUse.subscribe( data => {
    const player = data.source;
    const item = data.itemStack;
    const inv = player.getComponent("minecraft:inventory").container;
    if (item) {
    if (item.typeId == "bg:dislocator" || item.typeId == "bg:advanced_dislocator") {
       if (player.isSneaking) {
       const loc_x = String(player.location.x);
    const loc_y = String(player.location.y);
    const loc_z = String(player.location.z);
    item.setLore([loc_x, loc_y, loc_z])
       inv.setItem(player.selectedSlot, item);
   }}
   if (item.typeId == "bg:dislocator" && item.getLore().length > 0 && !player.isSneaking) {
     const loc_x2 = parseInt(item.getLore()[0]);
     const loc_y2 = parseInt(item.getLore()[1]);
     const loc_z2 = parseInt(item.getLore()[2]);
     let durability = item.getComponent("durability");
     let maxDurability = item.getComponent("durability")?.maxDurability;
     let damage = item.getComponent("durability")?.damage;
     player.runCommand(`tp @s ${loc_x2} ${loc_y2} ${loc_z2}`);
     player.applyDamage(2);
     durability.damage += 1;
     if (damage == maxDurability) {
        inv.setItem(player.selectedSlot, undefined);
     } else {
       inv.setItem(player.selectedSlot, item);
     }};
     if (item.typeId == "bg:advanced_dislocator" && item.getLore().length > 0 && !player.isSneaking) {
     const loc_x2 = parseInt(item.getLore()[0]);
     const loc_y2 = parseInt(item.getLore()[1]);
     const loc_z2 = parseInt(item.getLore()[2]);
     player.runCommand(`tp @s[hasitem={item=ender_pearl}] ${loc_x2} ${loc_y2} ${loc_z2}`);
     player.runCommand("clear @s[hasitem={item=ender_pearl}] ender_pearl 0 1");
   }}
});



mc.system.runInterval(() => {
    let players = mc.world.getAllPlayers();
    players.forEach(player => {
    let entities = player.dimension.getEntities({type: "bg:energy_infuser_container"});
        entities.forEach(entity => {
        let inv_ped = entity.getComponent("minecraft:inventory").container;
        if (inv_ped) {
        let item_ped = inv_ped.getItem(0);
        if (item_ped) {
        if (entity.hasTag('draconic_energy')) {
        if (item_ped.typeId.startsWith('bg:wyvern') || item_ped.typeId.startsWith('bg:draconic')) {
        if (item_ped.typeId.endsWith('empty')) {
        if (item_ped.getLore().length > 0) {
            let lore0 = item_ped.getLore();
        }
        entity.runCommand('function energy_in');
        item_ped = inv_ped.getItem(0);
        if (lore0) {
        item_ped.setLore(lore0);
        }}
        if (item_ped.typeId.endsWith('power') || item_ped.typeId.endsWith('capacitor') || item_ped.typeId.endsWith('sword') || item_ped.typeId.endsWith('pickaxe') || item_ped.typeId.endsWith('axe') || item_ped.typeId.endsWith('shovel') || item_ped.typeId.endsWith('hoe') || item_ped.typeId.endsWith('boots') || item_ped.typeId.endsWith('helmet') || item_ped.typeId.endsWith('leggings') || item_ped.typeId.endsWith('chestplate')) {
        if (item_ped.getLore().length > 0) {
            let lore = item_ped.getLore();
            let energy = parseInt(item_ped.getLore()[1]);
            let energyMax = parseInt(item_ped.getLore()[3]);
            if (energyMax > energy) {
            energy += 15;
            let energy2 = String(energy);
            lore[1] = energy2;
            item_ped.setLore(lore);
            inv_ped.setItem(0, item_ped);
            entity.runCommand('scoreboard players remove @s draconic_energy 15');
           }} else {
           item_ped.setLore([
            'Energy:', '15', 'Max:'
           ]);
           let lore = item_ped.getLore();
           if (item_ped.typeId == "bg:wyvern_flux_capacitor") {
              lore[3] = String(640005);
           } else if (item_ped.typeId == "bg:draconic_flux_capacitor") {
              lore[3] = String(2560005);
           } else if (item_ped.typeId.startsWith('bg:wyvern')) {
              lore[3] = String(40005);
           } else if (item_ped.typeId.endsWith('power')) {
              lore[3] = String(480000);
           } else if (item_ped.typeId.startsWith('bg:draconic')) {
              lore[3] = String(160005);
           };
           item_ped.setLore(lore);
           inv_ped.setItem(0, item_ped);
           entity.runCommand('scoreboard players remove @s draconic_energy 15');
               }}
            }}
         }}
      })
   })
}, 5);

mc.world.afterEvents.playerInteractWithBlock.subscribe( data => {
    let block = data.block;
    let player = data.player;
    if (!player.isSneaking) {
    if (block.typeId == "bg:energy_infuser") {
    let entities = player.dimension.getEntities({location:block.location, type: "bg:energy_infuser_container", closest: 1});
        entities.forEach(entity => {
        entity.runCommand(`titleraw ${player.name} actionbar {"rawtext": [{"text":"Energy: "}, {"score":{"name":"@s","objective":"draconic_energy"}}]}`);
       })
    }}
});