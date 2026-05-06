import * as mc from '@minecraft/server';

mc.world.afterEvents.playerInteractWithBlock.subscribe( data => {
    let block = data.block;
    let player = data.player;
    let item = data.itemStack;
    let inv = player.getComponent("minecraft:inventory").container;
    if (block.typeId == "bg:basic_fusion_crafting_injector" || block.typeId == "bg:wyvern_fusion_crafting_injector" || block.typeId == "bg:draconic_fusion_crafting_injector") {
        if (item == undefined) {
        let entities = player.dimension.getEntities({location:block.location, type: "bg:fusion_c_injector_item", maxDistance: 0.9, closest: 1});
        entities.forEach(entity => {
        let inv_ped = entity.getComponent("minecraft:inventory").container;
        if (inv_ped) {
        let item_ped = inv_ped.getItem(0);
        if (item_ped && !player.isSneaking) {
           entity.dimension.spawnItem(item_ped, block.location);
           inv_ped.setItem(0, undefined);
                 entity.runCommand(`replaceitem entity @s slot.weapon.mainhand 0 air`);
           entity.runCommand(`kill @s`);
              }
           }}
        )} else if (item.typeId == "bg:awakened_core" || item.typeId == "bg:awakened_draconium_block" || item.typeId == "bg:awakened_draconium_ingot" || item.typeId == "minecraft:crafting_table" || item.typeId == "minecraft:diamond" || item.typeId == "bg:draconic_core" || item.typeId == "bg:draconic_energy_core" || item.typeId == "bg:draconic_shovel_empty" || item.typeId == "bg:draconic_sword_empty" || item.typeId == "bg:draconium_block" || item.typeId == "bg:draconium_ingot" || item.typeId == "bg:dragon_heart" || item.typeId == "minecraft:ender_pearl" || item.typeId == "minecraft:furnace" || item.typeId == "bg:wyvern_core") {
           if (item && item.lockMode == "none" && !player.isSneaking) {
               player.runCommand(`execute positioned ${block.location.x} ${block.location.y} ${block.location.z} run function fusion_c_injector_entity`);
               let entities = player.dimension.getEntities({location:block.location, type: "bg:fusion_c_injector_item", maxDistance: 0.9, closest: 1});
               entities.forEach(entity => {
        let inv_ped = entity.getComponent("minecraft:inventory").container;
        let item_ped = inv_ped?.getItem(0);
        if (inv_ped && !item_ped) {

              if (item.amount <= 1) {

                 entity.runCommand(`replaceitem entity @s slot.weapon.mainhand 0 ${item.typeId}`);
                  inv.setItem(player.selectedSlot, undefined);
              } else {

                 item.amount -= 1;
                  inv.setItem(player.selectedSlot, item);
            }
             item.amount = 1;
             inv_ped.setItem(0, item);
             if (item.typeId == "bg:draconic_shovel_empty") {
             entity.runCommand(`replaceitem entity @s slot.weapon.mainhand 0 bg:draconic_shovel_fake`);
             } else if (item.typeId == "bg:draconic_sword_empty") {
             entity.runCommand(`replaceitem entity @s slot.weapon.mainhand 0 bg:draconic_sword_fake`);
             } else {
             entity.runCommand(`replaceitem entity @s slot.weapon.mainhand 0 ${item.typeId}`);
                }
            }}
        )}
    }}
});

mc.world.afterEvents.entityDie.subscribe( data => {
    const target = data.deadEntity;
    if (target.typeId == "bg:fusion_c_injector_item") {
        let inv_ped = target.getComponent("minecraft:inventory").container;
        if (inv_ped) {
        let item_ped = inv_ped.getItem(0);
        if (item_ped) {
           target.runCommand(`replaceitem entity @s slot.weapon.mainhand 0 air`);
           target.dimension.spawnItem(item_ped, target.location);
        }
    }}
    if (target.typeId == "minecraft:ender_dragon") {
       target.runCommand('loot spawn ~~~ loot "entities/dragon_heart"');
    }
});