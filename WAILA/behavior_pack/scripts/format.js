import { CONFIG } from "./config.js";

const C = CONFIG.colors;

/**
 * Wandelt "minecraft:oak_log" → "Oak Log"
 */
export function prettifyId(typeId) {
  const raw = typeId.includes(":") ? typeId.split(":")[1] : typeId;
  return raw
    .split("_")
    .map(w => w.charAt(0).toUpperCase() + w.slice(1))
    .join(" ");
}

export function getNamespace(typeId) {
  return typeId.includes(":") ? typeId.split(":")[0] : "minecraft";
}

/**
 * Erzeugt eine Healthbar aus Symbolen
 */
export function buildHealthBar(current, max) {
  const length = CONFIG.healthBarLength;
  const filled = Math.round((current / max) * length);
  const empty = length - filled;
  return `${C.health}${"♥".repeat(filled)}${C.healthBg}${"♥".repeat(empty)}§r ${C.detail}${Math.ceil(current)}/${Math.ceil(max)}`;
}

/**
 * Baut die finale ActionBar-Nachricht
 */
export function formatBlockInfo(block) {
  const name = prettifyId(block.typeId);
  const ns = getNamespace(block.typeId);
  let out = `${C.title}${name}\n${C.namespace}${ns}`;

  if (CONFIG.showCoordinates) {
    out += `\n${C.detail}${block.location.x} ${block.location.y} ${block.location.z}`;
  }
  return out;
}

export function formatEntityInfo(entity) {
  const name = entity.nameTag && entity.nameTag.length > 0
    ? entity.nameTag
    : prettifyId(entity.typeId);
  const ns = getNamespace(entity.typeId);
  let out = `${C.title}${name}\n${C.namespace}${ns}`;

  if (CONFIG.showEntityHealth) {
    const hp = entity.getComponent("health");
    if (hp) {
      out += `\n${buildHealthBar(hp.currentValue, hp.effectiveMax)}`;
    }
  }
  return out;
}
