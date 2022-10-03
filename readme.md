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

Also, take this with a grain of salt as I inferred what these sheets do base on their name and stucture.

## base.json

this file contains all sorts of stuff, and is absolutly massive.

achievement data ([AchievementData](AchievementData.md))
building connectors/walls ([BuildingConnectorData](BuildingConnectorData.md)),
contains information on buildable buildings ([BuildingData](BuildingData.md)),
animated buildings? (CivilianData),
data on natural obstacles  ([ClearableData](ClearableData.md)),
unknown ([CommonAssetData](CommonAssetData.md)),
unknown ([CurrencyRewardMod](CurrencyRewardMod.md)),
something to do with currencies and their bindings to resources ([CurrencyType](CurrencyType.md)),
data on effects? ([EffectsData](EffectsData.md)),
some sort of testing mechanism (Example),
faction icons ([FactionIcons](FactionIcons.md)),
general constants used by the game ([GameConstants](GameConstants.md))
in app purchase data (InAppPurchases (no reason to document this))
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

This file controls all aspects of the campaign.

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
items on sale for in app purchases? (SaleItems)
sale info (Sales)
special promotions (SpecialPromo)
has something to do with the triggering of notifications ([StoryActions](StoryActions.md))
triggers for the campain **REVIEW ME** ([StoryTriggers](StoryTriggers.md))
tournament data? ([TournamentData](TournamentData.md))
tournament reward drop chances? ([TournamentMedalsRewardMod](TournamentMedalsRewardMod.md))
tournament rewards ([TournamentRewards](TournamentRewards.md))
tournament tier data? ([TournamentTierData](TournamentTierData.md))

## holo.json

this file controls hologram stuff and possibly GUI stuff relating to events.

hero holograms? im pretty sure that the command center is reffering to where heros are trained ([CommandCenterEntries](CommandCenterEntries.md))
unknown deveoper notes? ([DevNotes](DevNotes.md))
explains itself ([LimitedTimeRewards](LimitedTimeRewards.md))
GUI texture data? ([TextureData](TextureData.md))
characters in transmissions/holograms ([TransmissionCharacters](TransmissionCharacters.md))
transmissions/holograms ([Transmissions](Transmissions.md))

everything after this is **NOT DONE AND WIP**

## olc.json

## prk.json

perk information.

## trp.json

troop information.