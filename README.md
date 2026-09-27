# Kanto Legacy Importer v1.5.2

Player package for Gen1Recomp. Imports an active Red, Blue, or Yellow save
into a separate FireRed slot. This package contains the same runtime code as
v1.5.2, with development files removed.

## Install and use

1. Install this ZIP (or its mod folder) in Gen1Recomp and enable it for FireRed.
   Keep only one copy of Kanto Legacy Importer enabled.
2. Make the save you want to transfer the active slot in Red, Blue, or Yellow.
3. Start FireRed and choose KANTO LEGACY on the main menu.
4. Select your source save from the list.

The importer creates and activates a new slot named LEGACY <trainer>.
The source save and existing FireRed slots are left untouched by the import.
Keep backups while testing the beta.

## What transfers

Trainer details, money, coins, playtime, party and boxed Pokemon, Pokedex,
badges, compatible items, and corresponding Kanto story progress through
Cerulean Cave/Mewtwo. The importer uses a safe equivalent FireRed location
where available, with a safe Pallet Town fallback.

TMs map by taught move where possible; otherwise they use explicit FireRed
replacements. Quantities that map to the same item combine. See
MACHINE-CONVERSION.md for the replacement list. Previously consumed TM
rewards are not reissued.

## Compatibility and testing

Intended for Gen1Recomp Red, Blue, and Yellow saves and FireRed. Validated
against engine modules from 0.2.62 and 0.3.19. Gen 2 import and a complete
cartridge-export workflow are not included.

For the v1.5.2 Pokemon shininess and PP Up fixes, create a fresh import.
Existing imported Pokemon are not automatically migrated to those fixes.

If an import fails, retain the error text. If the error says the new save was
committed but field entry failed, restart and load that slot before retrying.

For bug reports, include the importer and Gen1Recomp versions, source game,
story/location before import, steps to reproduce, and expected versus actual
behavior. Include the full error message when available.

All included Lua files are required, including progress_pipeline files:
they run the story conversion. Do not remove them.
