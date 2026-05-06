import * as mc from '@minecraft/server';

mc.system.runInterval(() => {
    let players = mc.world.getAllPlayers();
    players.forEach(player => {
    let equip = player.getComponent('equippable');
    if (equip) {
    let item3 = player.getComponent('equippable').getEquipment("Head");
    if (item3) {
    if (item3.typeId.startsWith('bg:wyvern') || item3.typeId.startsWith('bg:draconic')) {
     let durability = item3.getComponent("durability");
     let damage = item3.getComponent("durability")?.damage;
     let lore = item3.getLore();
     let energy = parseInt(item3.getLore()[1]);
     if (damage && damage >= 1) {
     if (energy > 0) {
         durability.damage -= 1;
         energy -= 15;
         let energy2 = String(energy);
         lore[1] = energy2;
         }
         if (energy <= 0 || item3.getLore().length <= 0) {
            player.runCommand('replaceitem entity @s[hasitem={location=slot.armor.head, item=bg:wyvern_helmet}] slot.armor.head 0 bg:wyvern_helmet_empty');
            player.runCommand('replaceitem entity @s[hasitem={location=slot.armor.head, item=bg:draconic_helmet}] slot.armor.head 0 bg:draconic_helmet_empty');
            item3 = player.getComponent('equippable').getEquipment("Head");
         }
         item3.setLore(lore);
         equip.setEquipment('Head', item3);
         }
    }}
    let item4 = player.getComponent('equippable').getEquipment("Chest");
    if (item4) {
    if (item4.typeId.startsWith('bg:wyvern') || item4.typeId.startsWith('bg:draconic')) {
     let durability = item4.getComponent("durability");
     let damage = item4.getComponent("durability")?.damage;
     let lore = item4.getLore();
     let energy = parseInt(item4.getLore()[1]);
     if (damage && damage >= 1) {
     if (energy > 0) {
         durability.damage -= 1;
         energy -= 15;
         let energy2 = String(energy);
         lore[1] = energy2;
         }
         if (energy <= 0 || item4.getLore().length <= 0) {
            player.runCommand('replaceitem entity @s[hasitem={location=slot.armor.chest, item=bg:wyvern_chestplate}] slot.armor.chest 0 bg:wyvern_chestplate_empty');
            player.runCommand('replaceitem entity @s[hasitem={location=slot.armor.head, item=bg:draconic_chestplate}] slot.armor.head 0 bg:draconic_chestplate_empty');
            item4 = player.getComponent('equippable').getEquipment("Chest");
         }
         item4.setLore(lore);
         equip.setEquipment('Chest', item4);
         }
    }}
    let item5 = player.getComponent('equippable').getEquipment("Legs");
    if (item5) {
    if (item5.typeId.startsWith('bg:wyvern') || item5.typeId.startsWith('bg:draconic')) {
     let durability = item5.getComponent("durability");
     let damage = item5.getComponent("durability")?.damage;
     let lore = item5.getLore();
     let energy = parseInt(item5.getLore()[1]);
     if (damage && damage >= 1) {
     if (energy > 0) {
         durability.damage -= 1;
         energy -= 15;
         let energy2 = String(energy);
         lore[1] = energy2;
         }
         if (energy <= 0 || item5.getLore().length <= 0) {
            player.runCommand('replaceitem entity @s[hasitem={location=slot.armor.legs, item=bg:wyvern_leggings}] slot.armor.legs 0 bg:wyvern_leggings_empty');
            player.runCommand('replaceitem entity @s[hasitem={location=slot.armor.head, item=bg:draconic_leggings}] slot.armor.head 0 bg:draconic_leggings_empty');
            item5 = player.getComponent('equippable').getEquipment("Legs");
         }
         item5.setLore(lore);
         equip.setEquipment('Legs', item5);
         }
    }}
    let item6 = player.getComponent('equippable').getEquipment("Feet");
    if (item6) {
    if (item6.typeId.startsWith('bg:wyvern') || item6.typeId.startsWith('bg:draconic')) {
     let durability = item6.getComponent("durability");
     let damage = item6.getComponent("durability")?.damage;
     let lore = item6.getLore();
     let energy = parseInt(item6.getLore()[1]);
     if (damage && damage >= 1) {
     if (energy > 0) {
         durability.damage -= 1;
         energy -= 15;
         let energy2 = String(energy);
         lore[1] = energy2;
         }
         if (energy <= 0 || item6.getLore().length <= 0) {
            player.runCommand('replaceitem entity @s[hasitem={location=slot.armor.feet, item=bg:wyvern_boots}] slot.armor.feet 0 bg:wyvern_boots_empty');
            player.runCommand('replaceitem entity @s[hasitem={location=slot.armor.head, item=bg:draconic_boots}] slot.armor.head 0 bg:draconic_boots_empty');
            item6 = player.getComponent('equippable').getEquipment("Feet");
         }
         item6.setLore(lore);
         equip.setEquipment('Feet', item6);
         }
    }}
    let item = player.getComponent('equippable').getEquipment("Mainhand");
    let item2 = player.getComponent('equippable').getEquipment("Offhand");
    if (item) {
    if (item.typeId.startsWith('bg:wyvern') || item.typeId.startsWith('bg:draconic')) {
    if (item.typeId.endsWith('power') || item.typeId.endsWith('sword') || item.typeId.endsWith('pickaxe') || item.typeId.endsWith('axe') || item.typeId.endsWith('shovel') || item.typeId.endsWith('hoe') || item.typeId.endsWith('boots') || item.typeId.endsWith('helmet') || item.typeId.endsWith('leggings') || item.typeId.endsWith('empty') || item.typeId.endsWith('chestplate')) {
     let durability = item.getComponent("durability");
     let damage = item.getComponent("durability")?.damage;
     let lore = item.getLore();
     let energy = parseInt(item.getLore()[1]);
     if (damage && damage >= 1) {
     if (energy > 0) {
         durability.damage -= 1;
         energy -= 15;
         let energy2 = String(energy);
         lore[1] = energy2;
         }
         if (energy <= 0 || item.getLore().length <= 0) {
            player.runCommand('function energy_out');
            item = player.getComponent('equippable').getEquipment("Mainhand");
         }
         item.setLore(lore);
         equip.setEquipment('Mainhand', item);
          }
       if (item2) {
       let lore = item.getLore();
       let energy = parseInt(item.getLore()[1]);
       let energyMax = parseInt(item.getLore()[3]);
       if (energyMax > energy) {
       if (item2.typeId.endsWith('flux_capacitor')) {
       if (item2.typeId.startsWith('bg:creative')) {
       energy += 15;
       let energy2 = String(energy);
       lore[1] = energy2;
       item.setLore(lore);
       equip.setEquipment('Mainhand', item);
       } else {
       let energyc = parseInt(item2.getLore()[1]);
       let lorec = item2.getLore();
       if (energyc > 0) {
       energy += 15;
       energyc -= 15;
       let energy2 = String(energy);
       let energyc2 = String(energyc);
       lore[1] = energy2;
       lorec[1] = energyc2;
       item.setLore(lore);
       item2.setLore(lorec);
       equip.setEquipment('Mainhand', item);
       equip.setEquipment('Offhand', item2);
                   }
                }}
             }}
          }}
       }}
    })
}, 1);

mc.world.afterEvents.entityHurt.subscribe( data => {
    const entity = data.hurtEntity;
    if (entity) {
    let equip = entity.getComponent('equippable');
    if (equip) {
    let itemh = entity.getComponent('equippable').getEquipment("Head");
    let itemc = entity.getComponent('equippable').getEquipment("Chest");
    let iteml = entity.getComponent('equippable').getEquipment("Legs");
    let itemf = entity.getComponent('equippable').getEquipment("Feet");
    let duration = 2;
    let level = 0;
    if (itemh) {
    if (itemh.typeId == "bg:wyvern_helmet") {
        level += 1;
        duration += 2;
    }
    if (itemh.typeId == "bg:draconic_helmet") {
        level += 2;
        duration += 4;
    }}
    if (itemc) {
    if (itemc.typeId == "bg:wyvern_chestplate") {
        level += 1;
        duration += 2;
    }
    if (itemc.typeId == "bg:draconic_chestplate") {
        level += 2;
        duration += 4;
    }}
    if (iteml) {
    if (iteml.typeId == "bg:wyvern_leggings") {
        level += 1;
        duration += 2;
    }
    if (iteml.typeId == "bg:draconic_leggings") {
        level += 2;
        duration += 4;
    }}
    if (itemf) {
    if (itemf.typeId == "bg:wyvern_boots") {
        level += 1;
        duration += 2;
    }
    if (itemf.typeId == "bg:draconic_boots") {
        level += 2;
        duration += 4;
    }}
    if (level > 0 && !entity.hasTag('de_shield_cooldown')) {
       entity.runCommand("playsound custom.shield_strike @s ~~~");
       entity.runCommand(`effect @s resistance ${duration} ${level}`);
       entity.addTag('de_shield_cooldown');
       mc.system.runTimeout(() => {
       entity.removeTag('de_shield_cooldown');
           }, 400);
        }
    }}
});