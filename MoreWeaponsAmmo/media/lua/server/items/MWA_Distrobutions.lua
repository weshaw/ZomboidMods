require 'Items/ProceduralDistributions'

local gunammo = {
    {"Base.308Box", 0.5},
    {"Base.223Box", 0.5}, 
    {"Base.ShotgunShellsBox", 1}, 
}
local gunclips = {
    {"Base.M14Clip", 0.5}, 
    {"Base.308Clip", 1}, 
}
local guns = {
    {"Base.AssaultRifle", 0.6}, 
    {"Base.AssaultRifle2", 0.5}, 
    {"Base.VarmintRifle", 0.8}, 
    {"Base.HuntingRifle", 1}, 
    {"Base.Shotgun", 1}, 
    {"Base.DoubleBarrelShotgun", 0.5}, 
    {"Base.ShotgunSawnoff", 0.3}, 
    {"Base.DoubleBarrelShotgunSawnoff", 0.2}, 
}
local guncases = {
    {"Base.ShotgunCase1", 1}, 
    {"Base.ShotgunCase2", 0.5}, 
    {"Base.RifleCase1", 1}, 
    {"Base.RifleCase2", 0.5}, 
    {"Base.RifleCase3", 0.3}, 
}
local pistolammo = {
    {"Base.Bullets9mmBox", 1}, 
    {"Base.Bullets44Box", 0.5}, 
    {"Base.Bullets45Box", 0.5}, 
    {"Base.Bullets38Box", 0.5}, 
}
local pistolclips = {
    {"Base.9mmClip", 1}, 
    {"Base.45Clip", 0.5}, 
    {"Base.44Clip", 0.5}, 
}
local pistols = {
    {"Base.Pistol", 1}, 
    {"Base.Pistol2", 0.5}, 
    {"Base.Pistol3", 0.3}, 
    {"Base.Revolver", 0.7}, 
    {"Base.Revolver_Short", 0.5}, 
    {"Base.Revolver_Long", 0.3},
}
local pistolcases = {
    {"Base.PistolCase1", 1}, 
    {"Base.PistolCase2", 0.5}, 
    {"Base.PistolCase3", 0.3}, 
    {"Base.RevolverCase1", 0.7},
    {"Base.RevolverCase2", 0.5}, 
    {"Base.RevolverCase3", 0.3}, 
}

local upgrades = {
    {"Base.HolsterDouble", 0.5}, 
    {"Base.HolsterSimple", 0.8}, 
    {"Base.AmmoStraps", 1}, 
    {"Base.Bayonnet", 0.3}, 
    {"Base.ChokeTubeFull", 0.3}, 
    {"Base.ChokeTubeImproved", 1}, 
    {"Base.FiberglassStock", 0.3}, 
    {"Base.GunLight", 0.5}, 
    {"Base.Hat_EarMuff_Protectors", 0.6}, 
    {"Base.Laser", 0.3}, 
    {"Base.IronSight", 0.4}, 
    {"Base.RecoilPad", 0.3}, 
    {"Base.RedDot", 0.3}, 
    {"Base.Sling", 0.9}, 
    {"Base.x2Scope", 0.4}, 
    {"Base.x4Scope", 0.3}, 
    {"Base.x8Scope", 0.2}, 
}

local wsDistributions = {}
local function addItems(location, list, chance)
    if not wsDistributions[location] then
        wsDistributions[location] = {}
    end
    for i = 1, #list do
        table.insert(wsDistributions[location], list[i][1])
        table.insert(wsDistributions[location], math.floor(list[i][2] * chance + 0.5))
    end
end

addItems("GunStoreShelf", gunammo, 30)
addItems("GunStoreShelf", gunclips, 30)
addItems("GunStoreShelf", guns, 10)
addItems("GunStoreShelf", pistolammo, 30)
addItems("GunStoreShelf", pistolclips, 30)
addItems("GunStoreShelf", pistols, 10)
addItems("GunStoreShelf", upgrades, 50)

addItems("GunStoreCounter", gunammo, 30)
addItems("GunStoreCounter", gunclips, 30)
addItems("GunStoreCounter", guns, 10)
addItems("GunStoreCounter", pistolammo, 30)
addItems("GunStoreCounter", pistolclips, 30)
addItems("GunStoreCounter", pistols, 10)
addItems("GunStoreCounter", upgrades, 50)
addItems("GunStoreCounter", pistolcases, 50)
addItems("GunStoreCounter", guncases, 55)

addItems("GunStoreDisplayCase", gunclips, 30)
addItems("GunStoreDisplayCase", guns, 10)
addItems("GunStoreDisplayCase", pistolclips, 30)
addItems("GunStoreDisplayCase", pistols, 10)
addItems("GunStoreDisplayCase", upgrades, 50)
addItems("GunStoreDisplayCase", pistolcases, 50)
addItems("GunStoreDisplayCase", guncases, 55)

addItems("GunStoreAmmunition", gunammo, 30)
addItems("GunStoreAmmunition", pistolammo, 30)

addItems("PoliceStorageGuns", gunammo, 30)
addItems("PoliceStorageGuns", pistolammo, 30)
addItems("PoliceStorageGuns", guns, 50)
addItems("PoliceStorageGuns", pistols, 50)

addItems("ArmyStorageGuns", guns, 30)
addItems("ArmyStorageGuns", pistols, 30)

addItems("LockerArmyBedroom", gunammo, 30)
addItems("LockerArmyBedroom", pistolammo, 30)
addItems("LockerArmyBedroom", upgrades, 50)

addItems("CampingStoreGear", gunammo, 20)
addItems("CampingStoreGear", pistolammo, 20)

addItems("GardenStoreTools", gunammo, 10)
addItems("GardenStoreTools", pistolammo, 10)

addItems("GigamartFarming", gunammo, 10)

addItems("WardrobeMan", gunammo, 10)
addItems("WardrobeMan", gunclips, 3)
-- addItems("WardrobeMan", guns, 5)
addItems("WardrobeMan", pistolammo, 5)
addItems("WardrobeMan", pistolclips, 3)
-- addItems("WardrobeMan", pistols, 8)
addItems("WardrobeMan", pistolcases, 5)
addItems("WardrobeMan", guncases, 4)

addItems("WardrobeManClassy", gunammo, 10)
addItems("WardrobeManClassy", gunclips, 3)
-- addItems("WardrobeManClassy", guns, 5)
addItems("WardrobeManClassy", pistolammo, 5)
addItems("WardrobeManClassy", pistolclips, 3)
-- addItems("WardrobeManClassy", pistols, 8)
addItems("WardrobeManClassy", pistolcases, 5)
addItems("WardrobeManClassy", guncases, 4)

addItems("WardrobeRedneck", gunammo, 30)
addItems("WardrobeRedneck", gunclips, 20)
addItems("WardrobeRedneck", guns, 10)
addItems("WardrobeRedneck", pistolammo, 30)
addItems("WardrobeRedneck", pistolclips, 10)
addItems("WardrobeRedneck", pistols, 15)

addItems("BedroomDresser", pistols, 10)
addItems("BedroomDresser", pistolclips, 5)
addItems("BedroomDresser", pistolammo, 5)

addItems("BedroomSideTable", pistols, 10)
addItems("BedroomSideTable", pistolclips, 5)
addItems("BedroomSideTable", pistolammo, 5)

for location, types in pairs(wsDistributions) do
    for i = 1, #types, 2 do
        table.insert(ProceduralDistributions.list[location].items, types[i])
        table.insert(ProceduralDistributions.list[location].items, types[i + 1])
    end
end
