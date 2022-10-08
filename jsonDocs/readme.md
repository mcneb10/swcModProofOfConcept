# What is this?

This is a proof of concept for creating mods for SWC.

By adding and removing from the Game's many JSON files, you can add new content to the game.

This game is actually designed pretty well in some aspects.

The game client is very modular and flexible towards adding new stuff.

# What the JSON files do

The json files contain data on almost every aspect of the game.

Here's what I found so far.

This is very much **WIP**. Any help documenting this stuff is appreciated.

Every json file has tables (called objects in the file itself) that contain some data.

At the very bottom of each JSON file is a thing that describes the structure of each sheet and how many sheets exist.

Also, take this with a grain of salt as I inferred what these sheets do base on their name and structure.

## base.json

this file contains all sorts of stuff, and is absolutely massive.

achievement data ([AchievementData](AchievementData.md))

building connectors/walls ([BuildingConnectorData](BuildingConnectorData.md))

contains information on buildable buildings ([BuildingData](BuildingData.md))

animated buildings? ([CivilianData](CivilianData.md))

data on natural obstacles  ([ClearableData](ClearableData.md))

unknown ([CommonAssetData](CommonAssetData.md))

unknown ([CurrencyRewardMod](CurrencyRewardMod.md))

something to do with currencies and their bindings to resources ([CurrencyType](CurrencyType.md))

data on effects? ([EffectsData](EffectsData.md))

some sort of testing mechanism (Example)

faction icons ([FactionIcons](FactionIcons.md))

general constants used by the game ([GameConstants](GameConstants.md))

in-app purchase data (InAppPurchases (no reason to document this))

unknown and empty (ListEntries)

unknown and empty (LookUp)

unknown (MedalsRewardMod)

holograms for something ([MobilizationHologram](MobilizationHologram.md))

notifications the game uses to get you to come back ([Notifications](Notifications.md))

probably describes variations in troops and buildings across planets ([PlanetAttachmentData](PlanetAttachmentData.md))

planet information ([PlanetData](PlanetData.md))

information of planet lighting ([PlanetaryLighting](PlanetaryLighting.md))

pvp looting information? ([PvpTargetLootInformation](PvpTargetLootInformation.md))

shader stuff ([ShaderData](ShaderData.md))

troop transport information ([TransportData](TransportData.md))

trap information ([TrapData](TrapData.md))

UI information ([UIData](UIData.md))

unknown, seems to be unimportant because it contains barely any data (VFXProfileData)

## cae.json

This file controls all aspects of the campaign and some information on in game events and sales.

data on battles ([BattleData](BattleData.md))

data on scripts that control battles ([BattleScripts](BattleScripts.md))

data on the campaign ([CampaignData](CampaignData.md))

data on campaign missions ([CampaignMissionData](CampaignMissionData.md))

information on characters and probably has something to do with holograms ([CharacterData](CharacterData.md))

conditions that allow you to advance in the campaign? **REVIEW ME** ([Conditions](Conditions.md))

information on defending against enemies **REVIEW ME** ([DefenseEncounters](DefenseEncounters.md))

unknown and probably has something to do wit DefenseEncounters ([DefenseEncountersProfiles](DefenseEncountersProfiles.md))

possibly has something to do with attacking bases in the campaign ([Raid](Raid.md))

controls raid missions? ([RaidMissionPool](RaidMissionPool.md))

unknown and empty (Reference)

reward data ([RewardData](RewardData.md))

empty (RewardGroup)

items on sale for in-app purchases? (SaleItems)

sale info (Sales)

special promotions (SpecialPromo)

has something to do with the triggering of notifications ([StoryActions](StoryActions.md))

triggers for the campaign **REVIEW ME** ([StoryTriggers](StoryTriggers.md))

tournament data? ([TournamentData](TournamentData.md))

tournament reward drop chances? ([TournamentMedalsRewardMod](TournamentMedalsRewardMod.md))

tournament rewards ([TournamentRewards](TournamentRewards.md))

tournament tier data? ([TournamentTierData](TournamentTierData.md))

## holo.json

this file controls hologram stuff and possibly GUI stuff relating to events.

hero holograms? im pretty sure that the command center is referring to where heroes are trained ([CommandCenterEntries](CommandCenterEntries.md))

unknown developer notes? ([DevNotes](DevNotes.md))

explains itself ([LimitedTimeRewards](LimitedTimeRewards.md))

GUI texture data? ([TextureData](TextureData.md))

characters in transmissions/holograms ([TransmissionCharacters](TransmissionCharacters.md)

transmissions/holograms ([Transmissions](Transmissions.md))

## olc.json

Controls loot, drops, shards, crates, limited edition items, and more microtransaction-esque stuff.

pre-set costs represented by UIDs ([Cost](Cost.md))

Metadata about crate assets, and other information for their presentation. ([Crate](Crate.md))

crate drop chances? **fallbackUid** seems to be the most interesting part ([CrateSupplyPool](CrateSupplyPool.md))

criteria for crates and general metadata about them? ([CrateSupply](CrateSupply.md))

crate frequency based on HQ level? ([CrateSupplyScale](CrateSupplyScale.md))

information about items that fly out of crates? ([CrateFlyoutItem](CrateFlyoutItem.md))

data card "tiers". could be useful for adding some sort of currency ([DataCardTiers](DataCardTiers.md))

explains itself ([LimitedEditionItemData](LimitedEditionItemData.md))

some objective metadata ([ObjSeries](ObjSeries.md))

more objective metadata? **REVIEW ME** ([ObjTable](ObjTable.md))

list of loot entries for each faction and planet ([PlanetLoot](PlanetLoot.md))

loot entries ([PlanetLootEntry](PlanetLootEntry.md))

shard shop info? ([ShardShopSeries](ShardShopSeries.md))

the cost(uid that points to a cost item) information and pool of shards? ([ShardShopPool](ShardShopPool.md))

stickers on the store icon that show up base on specific criteria (HQ level) ([Stickers](Stickers.md))

## prk.json

perk information.

effects that can be caused by perks ([PerkEffects](PerkEffects.md))

the perks ([Perks](Perks.md))

something with slots and squad perks ([SquadLevel](SquadLevel.md))

## trp.json

troop information.

assigns an asset to a specific uid ([AssetData](AssetData.md))

assign a music track and some metadata to a uid ([AudioData](AudioData.md))

buff information **REVIEW ME** ([BuffData](BuffData.md))

identifiers and holograms for creatures ([CreatureData](CreatureData.md))

data on items that give buffs? ([EquipmentData](EquipmentData.md))

buffs applied by equipment ([EquipmentEffectData](EquipmentEffectData.md))

explains itself ([HeroAbilities](HeroAbilities.md))

unknown and empty (LookUp)

explains itself ([ProjectileData](ProjectileData.md))

to be honest I don't know what shards are ([Shard](Shard.md))

some troop metadata? ([SkinData](SkinData.md))

no idea but is pointed to by a field in skin data ([SkinOverrideData](SkinOverrideData.md))

explains itself? ([SpecialAttackData](SpecialAttackData.md))

metadata on troop summoning? ([SummonDetails](SummonDetails.md))

explains itself **REVIEW ME** ([TroopData](TroopData.md))

explains itself **REVIEW ME** ([TurretData](TurretData.md))

UI information for troops with special abilities ([UISupplemental](UISupplemental.md))

## strings_<locale>.json

Has all the game's strings, localized.

([LocalizedStrings](LocalizedStrings.md))