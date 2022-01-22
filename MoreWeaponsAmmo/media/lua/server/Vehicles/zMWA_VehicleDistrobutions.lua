require 'Vehicles/VehicleDistributions'

print(type(VehicleDistributions))

local function insert(locations, itemTable)
    for l = 1, #locations, 1 do
        for i = 1, #itemTable, 2 do
            if(not pcall(
                function ()
                    table.insert(VehicleDistributions[locations[l]].items, itemTable[i])
                    table.insert(VehicleDistributions[locations[l]].items, itemTable[i + 1])
                end
            )) then
                print("Error inserting location: " .. locations[l] .. " item: " .. itemTable[i])
            end
        end
    end
end

insert({"GloveBox"}, {
    "Base.Pistol", 3,
    "Base.Pistol2", 3,
    "Base.Revolver_Short", 2,
    "Base.Revolver_Long", 2,
    "Base.Bullets9mmBox", 3, 
    "Base.Bullets44Box", 2, 
    "Base.Lighter", 5,
    "Base.Cigarettes", 8,
})

insert({"SurvivalistTruckBed","HunterTruckBed"}, {
    "Base.Shotgun", 3, 
    "Base.HuntingRifle", 5, 
    "Base.ShotgunCase2", 1, 
    "Base.RifleCase3", 1, 
    "Base.RifleCase2", 1, 
    "Base.308Box", 2,
    "Base.223Box", 8, 
    "Base.ShotgunShellsBox", 5, 
    "Base.Bullets9mmBox", 10, 
    "Base.Bullets44Box", 8, 
})

insert({"TrunkSports","TrunkHeavy","TrunkStandard","McCoyTruckBed","HunterTruckBed"}, {
    "Base.223Box", 2, 
    "Base.ShotgunShellsBox", 2, 
    "Base.Bullets9mmBox", 2, 
    "Base.Bullets44Box", 2, 
})

insert({"FarmerTruckBed","RangerTruckBed"}, {
    "Base.Shotgun", 3, 
    "Base.HuntingRifle", 5, 
    "Base.ShotgunCase2", 1, 
    "Base.RifleCase3", 1, 
    "Base.RifleCase2", 1, 
    "Base.RevolverCase3", 1, 
    "Base.ShotgunShellsBox", 8, 
    "Base.223Box", 8, 
})

insert({"ConstructionWorkerTruckBed"},{
    "Sledgehammer", 0.5,
    "Sledgehammer2", 0.5,
    "DuctTape", 10,
    "Glue", 10,
    "Woodglue", 12,
    "Base.Bullets9mmBox", 2, 
    "Base.Bullets44Box", 2, 
    "Base.ShotgunShellsBox", 2, 
    "CarBatteryCharger", 6,
})
