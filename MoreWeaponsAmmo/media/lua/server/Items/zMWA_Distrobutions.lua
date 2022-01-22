require 'Items/ProceduralDistributions'

print(type(ProceduralDistributions))

local function insert(locations, itemTable)
    for l = 1, #locations, 1 do
        for i = 1, #itemTable, 2 do
            if(not pcall(
                function ()
                    table.insert(ProceduralDistributions.list[locations[l]].items, itemTable[i])
                    table.insert(ProceduralDistributions.list[locations[l]].items, itemTable[i + 1]/2)
                end
            )) then
                print("Error inserting location: " .. locations[l] .. " item: " .. itemTable[i])
            end
        end
    end
end



insert({"WardrobeMan", "WardrobeManClassy", "WardrobeRedneck","WardrobeWoman","WardrobeWomanClassy", "BedroomDresser", "BedroomSideTable","ClosetShelfGeneric"}, {
    "Base.308Box", 2,
    "Base.223Box", 8, 
    "Base.ShotgunShellsBox", 5, 
    "Base.Bullets9mmBox", 10, 
    "Base.Bullets44Box", 8, 
})

insert({"WardrobeMan", "WardrobeManClassy", "WardrobeRedneck","WardrobeWoman","WardrobeWomanClassy"}, {
    "Base.Shotgun", 3, 
    "Base.HuntingRifle", 5, 
    "Base.ShotgunCase2", 1, 
    "Base.RifleCase3", 1, 
    "Base.RifleCase2", 1, 
    "Base.RevolverCase3", 1, 
})

insert({"BedroomDresser", "BedroomSideTable"}, {
    "Base.PistolCase1", 2, 
    "Base.PistolCase2", 1, 
    "Base.PistolCase3", 1, 
})
insert({"GarageTools", "GarageFirearms","ClosetShelfGeneric"}, {
    "Base.ShotgunCase1", 4, 
    "Base.ShotgunCase2", 3, 
    "Base.RifleCase1", 4, 
    "Base.RifleCase2", 2, 
    "Base.RifleCase3", 2, 
    "Base.PistolCase1", 4, 
    "Base.PistolCase2", 2, 
    "Base.PistolCase3", 2, 
    "Base.RevolverCase1", 4, 
    "Base.RevolverCase2", 2, 
    "Base.RevolverCase3", 2, 
    "Machete", 1,

})

insert({"HuntingLockers","PawnShopGunsSpecial"}, {
    "Base.PistolCase1", 8,
    "Base.PistolCase2", 6,
    "Base.PistolCase3", 4,
    "Base.RevolverCase1", 6,
    "Base.RevolverCase2", 8,
    "Base.RevolverCase3", 4,
    "Base.RifleCase1", 8,
    "Base.RifleCase2", 6,
    "Base.RifleCase3", 2,
    "Base.ShotgunCase1", 8,
    "Base.ShotgunCase2", 8,
    "Base.Shotgun", 3,
    "Base.ShotgunSawnoff", 3,
    "Base.AmmoStraps", 6,
    "Base.Bayonnet", 4,
    "Base.ChokeTubeFull", 6,
    "Base.ChokeTubeImproved", 6,
    "Base.FiberglassStock", 6,
    "Base.GunLight", 6,
    "Base.Laser", 6,
    "Base.RecoilPad",  6,
    "Base.RedDot", 6,
    "Base.Sling", 6,
    "Base.x2Scope", 8,
    "Base.x4Scope", 6,
    "Base.x8Scope", 4,
    "Base.Bag_BigHikingBag", 3,
    "Base.Bag_WeaponBag", 8,
    "Base.Bag_ShotgunDblSawnoffBag", 1,
    "Base.Bag_ShotgunSawnoffBag", 1,
    "Base.223Box", 10,
    "Base.308Box", 10,
    "Base.Bullets38Box", 10,
    "Base.Bullets44Box", 10,
    "Base.Bullets45Box", 10,
    "Base.Bullets9mmBox", 10,
    "Base.ShotgunShellsBox", 10,
    "Base.Katana", 1,
    "Base.HuntingKnife", 8,
    "Base.Machete", 2,
})

insert({"GarageFirearms","PlankStashGun"}, {
    "Base.PistolCase1", 5,
    "Base.PistolCase2", 3,
    "Base.PistolCase3", 2,
    "Base.RevolverCase1", 5,
    "Base.RevolverCase2", 5,
    "Base.RevolverCase3", 2,
    "Base.RifleCase1", 5,
    "Base.RifleCase2", 2,
    "Base.RifleCase3", 2,
    "Base.ShotgunCase1", 5,
    "Base.ShotgunCase2", 2,
    "Base.Shotgun", 5,
    "Base.ShotgunSawnoff", 2,
    "Base.AmmoStraps", 2,
    "Base.Bayonnet", 2,
    "Base.ChokeTubeFull", 2,
    "Base.Bag_BigHikingBag", 10,
    "Base.Bag_WeaponBag", 5,
    "Base.Bag_ShotgunDblSawnoffBag", 3,
    "Base.Bag_ShotgunSawnoffBag", 3,
    "Base.223Box", 10,
    "Base.308Box", 10,
    "Base.Bullets38Box", 10,
    "Base.Bullets44Box", 10,
    "Base.Bullets45Box", 10,
    "Base.Bullets9mmBox", 10,
    "Base.ShotgunShellsBox", 10,
    "Base.Katana", 3,
    "Base.HuntingKnife", 8,
    "Base.Machete", 5,
})

insert({"PoliceDesk","PoliceLockers"}, {
    "Base.PistolCase1", 5,
    "Base.PistolCase2", 3,
    "Base.PistolCase3", 2,
    "Base.RevolverCase1", 5,
    "Base.RevolverCase2", 5,
    "Base.RevolverCase3", 2,
    "Base.Bullets9mmBox", 10,
    "Base.Bullets44Box", 10,
    "Base.223Box", 10,
})
insert({"PoliceStorageAmmunition","GunStoreAmmunition"}, {
    "Base.308Box", 20,
    "Base.308Box", 20,
    "Base.Bullets9mmBox", 20,
    "Base.Bullets9mmBox", 20,
    "Base.Bullets9mmBox", 20,
    "Base.Bullets9mmBox", 20,
    "Base.ShotgunShellsBox", 20,
    "Base.ShotgunShellsBox", 20,
    "Base.ShotgunShellsBox", 20,
})
insert({"PoliceStorageGuns","SecurityLockers","FirearmWeapons","PawnShopGuns"}, {
    "Base.Bag_WeaponBag", 8,
    "Base.308Box", 30,
    "Base.308Clip", 8,
    "Base.9mmClip", 10,
    "Base.AmmoStrap_Bullets", 4,
    "Base.AmmoStrap_Shells", 4,
    "Base.AssaultRifle", 2,
    "Base.AssaultRifle2", 1,
    "Base.Bullets9mmBox", 30,
    "Base.FiberglassStock", 4,
    "Base.HolsterDouble", 1,
    "Base.HolsterSimple", 4,
    "Base.HuntingRifle", 8,
    "Base.M14Clip", 4,
    "Base.Pistol", 30,
    "Base.Shotgun", 8,
    "Base.ShotgunShellsBox", 20,
    "Base.ShotgunShellsBox", 10,
    "Base.Sling", 4,
    "Base.x2Scope", 4,
    "Base.x4Scope", 2,
    "Base.x8Scope", 1,
    "Base.Nightstick", 2,
    "Base.Revolver_Short", 10,
})

insert({"PoliceStorageGuns","SecurityLockers","FirearmWeapons","PawnShopGuns"}, {
    "Base.556Clip", 10,
    "Base.AssaultRifle", 2,
    "Base.AssaultRifle2", 8,
    "Base.M14Clip", 10,
    "Base.556Box", 10,
    "Base.308Box", 20,
    "Base.308Clip", 8,
    "Base.Shotgun", 10,
    "Base.DoubleBarrelShotgun", 8,
    "Base.Revolver_Long", 8,
    "Base.Pistol3", 8,
    "Base.Bullets44Box", 10,
    "Base.Bullets45Box", 10,
    "Base.ShotgunShellsBox", 10,
})
