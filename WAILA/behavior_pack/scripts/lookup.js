import { CONFIG } from "./config.js";

/**
 * Liefert das Ziel (Block oder Entität), auf das ein Spieler schaut.
 */
export function getTarget(player) {
  const opts = { maxDistance: CONFIG.maxDistance };

  // Erst Entitäten prüfen (näher = Vorrang)
  const entityHits = player.getEntitiesFromViewDirection(opts);
  if (entityHits.length > 0) {
    return { type: "entity", value: entityHits[0].entity };
  }

  // Dann Block prüfen
  const blockHit = player.getBlockFromViewDirection(opts);
  if (blockHit) {
    return { type: "block", value: blockHit.block };
  }

  return null;
}
