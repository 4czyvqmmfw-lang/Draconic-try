import { system, world } from "@minecraft/server";
import { CONFIG } from "./config.js";
import { getTarget } from "./lookup.js";
import { formatBlockInfo, formatEntityInfo } from "./format.js";

console.warn("[WAILA-Reluk] Addon initialized");

system.runInterval(() => {
  for (const player of world.getAllPlayers()) {
    try {
      const target = getTarget(player);
      if (!target) continue;

      const message = target.type === "entity"
        ? formatEntityInfo(target.value)
        : formatBlockInfo(target.value);

      player.onScreenDisplay.setActionBar(message);
    } catch (err) {
      // Fehler stumm verschlucken, damit der Loop nicht abstürzt
    }
  }
}, CONFIG.tickInterval);
