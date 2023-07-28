Config = {
    IndependentGarage = false, -- if you store a vehicle in garage A, you can not take it out from garage B.
    ShowJobVehicles = false, -- show job vehicles such as police cars
    Damages = true, -- save & load damages when storing / retrieving a car?
    Use3DText = true, -- use 3d text?
    ImpoundPrice = 500, -- price to retrieve a vehicle from the impound
    AllowMultiple = false, -- allow people to take out vehicles from the impound if it is already out?
    DefaultJob = "", -- this is the job for cars which are not for jobs. For some servers, this should be just "" and for others "civ"
    DefaultType = "car", -- if type is not defined for the garage, it will chec kif the "type" in owned_vehicles is DefaultType

    Impounding = {
        AllowJobsToImpound = true, -- allow specific jobs to impound vehicles?
        Command = "impound", -- command for impounding, or false for disabled
        AllowedJobs = { -- the specific jobs allowed to impound vehicles, if AllowJobsToImpound is enabled
            "police", "mechanic",
        },
    },

    Interior = {
        Enabled = true, -- should you browse vehicles at the interior or at the garage browse?
        Coords = vector4(228.8, -986.97, -99.96, 180.0), -- vector4(x, y, z, heading) browse of the interior.
        CoordsLift = vector4(235.16, -1004.88, -99.0, 356.08) -- spawn do player no elevador
    },

    UsePed           = true,      --  true: Use Ped (NPC)   false: only drawtext

    Garagens          = {
     -- 1. NPC Coordinates    /        2. HDG    /   Vehicle Spawn Point    /   VSP HDG / Visible on map? / Ped_Model_Name
        {vector3(101.12, -1073.65, 28.37), 65.85,  vector3(107.86, -1079.71, 28.82), 338.93, true, "csb_bryony" },      -- Legion Square / Ammu Nation
        {vector3(214.00, -808.44, 30.01), 158.35,  vector3(227.99, -804.11, 30.37), 161.30, true, "csb_bryony" },       -- Legion Square / Hospital (Pillbox)
        {vector3(275.33, -345.58, 44.17), 338.38,  vector3(272.39, -336.36, 44.55), 162.21, true, "csb_bryony" },       -- Fleeca Bank / Hospital (Pillbox)
        {vector3(-811.03, -2371.97, 13.65), 240.08, vector3(-804.51, -2376.86, 14.2), 328.04, true, "csb_bryony" },     -- LSIA / Touchdown Car rental
        {vector3(-1184.80, -1510.09, 3.65), 306.83, vector3(-1187.28, -1499.95, 4.01), 217.48, true, "csb_bryony" },    -- Vespucci Beach
        {vector3(922.79, -106.93, 77.76), 10.32, vector3(921.04, -96.98, 78.39), 269.89, true, "csb_bryony" },          -- Casino
        {vector3(362.05, 297.77, 102.88), 335.4, vector3(363.46, 286.29, 103.04), 341.65, true, "csb_bryony"},          -- Vinewood 24/7
        {vector3(1036.02, -763.96, 56.99), 326.5, vector3(1040.35, -773.42, 57.65), 12.73, true, "csb_bryony"},         -- Mirror Park
        {vector3(392.76, -1643.81, 28.3), 270.18, vector3(406.16, -1644.2, 28.92), 230.00, true, "csb_bryony"}           -- South Los Santos Impound

    },
    
    Garages = {
        --[[
        nome_da_garagem = {
            browse = vector3(436.44, -1521.08, 27.28),
            spawn = vector4(436.44, -1521.08, 28.60, 234.8),
            vehicletype = "car"
        },
        ]]
        Garagem1 = {
            browse = vector3(436.44, -1521.08, 27.28),
            spawn = vector4(436.44, -1521.08, 28.60, 234.8),
            vehicletype = "car"
        },
        ------------------------------------------------
        ----               PRAÇA                     ---
        ------------------------------------------------
        Garagem2 = {
            browse = vector3(214.12, -809.0, 31.0),
            spawn = vector4(222.48, -804.2, 30.68, 237.72),
            vehicletype = "car",
            spawnW = 338.93
        },
        ---------------------------------------------------------
        Garagem3 = 
        {
            browse = vector3(-1047.32, -2671.96, 13.84),
            spawn = vector4(-1051.72, -2667.2, 13.84, 291.2),
            vehicletype = "car",
        },
        Garagem4 = {
            browse = vector3(275.96, -345.04, 45.16),
            spawn = vector4(288.52, -339.12, 44.92, 153.72),
            vehicletype = "car",
        },
        Garagem5 = {
            browse = vector3(1738.0, 3710.48, 34.16),
            spawn = vector4(1738.32, 3717.28, 34.08, 17.32),
            vehicletype = "car",
        },
        Garagem6 = {
            browse = vector3(-340.44, 266.4, 85.68),
            spawn = vector4(-344.44, 274.28, 85.36, 258.2),
            vehicletype = "car",
        },
        Garagem7 = {
            browse = vector3(1036.0, -763.36, 58.0),
            spawn = vector4(1030.16, -764.88, 58.0, 44.16),
            vehicletype = "car",
        },
        Garagem8 = {
            browse = vector3(813.92, -2120.04, 29.32),
            spawn = vector4(818.6, -2125.32, 29.32, 81.12),
            vehicletype = "car",
        },
        Garagem9 = {
            browse = vector3(2580.84, 462.96, 108.6),
            spawn = vector4(2573.8, 458.04, 108.44, 102.56),
            vehicletype = "car",
        },
        Garagem10 = {
            browse = vector3(-2204.32, 4246.6, 47.76),
            spawn = vector4(-2210.96, 4248.44, 47.4, 60.0),
            vehicletype = "car",
        },
        Garagem11 = {
            browse = vector3(1698.28, 4793.88, 41.92),
            spawn = vector4(1696.52, 4801.44, 41.8, 125.28),
            vehicletype = "car",
        },
        Garagem12 = {
            browse = vector3(-1888.48, 2048.76, 141.0),
            spawn = vector4(-1889.76, 2045.28, 140.88, 235.12),
            vehicletype = "car",
        },
        Garagem13 = {
            browse = vector3(1141.2, 2663.48, 38.16),
            spawn = vector4(1137.52, 2663.44, 38.0, 2.12),
            vehicletype = "car",
        },
        Garagem14 = {
            browse = vector3(-422.4, 1213.16, 325.76),
            spawn = vector4(-417.84, 1212.08, 325.64, 249.84),
            vehicletype = "car",
        },
        Garagem15 = {
            browse = vector3(-356.2, -728.72, 33.96),
            spawn = vector4(-358.44, -733.24, 33.96, 271.84),
            vehicletype = "car",
        },
        Garagem16 = {
            browse = vector3(-138.76, 6355.48, 31.48),
            spawn = vector4(-145.6, 6358.4, 31.48, 179.72),
            vehicletype = "car",
        },
        Garagem17 = {
            browse = vector3(1842.12, 2545.36, 45.68),
            spawn = vector4(1831.96, 2542.0, 45.88, 263.24),
            vehicletype = "car",
        },
        Garagem18 = {
            browse = vector3(-1190.51, -1503.7, 3.75),
            spawn = vector4(-1189.96, -1494.2, 4.36, 206.6),
            vehicletype = "car",
        },
        Garagem19 = {
            browse = vector3(-903.4, -154.76, 41.88),
            spawn = vector4(-907.8, -151.36, 41.88, 296.96),
            vehicletype = "car",
        },
        Garagem20 = {
            browse = vector3(-3244.28, 991.92, 12.48),
            spawn = vector4(-3245.0, 991.4, 12.48, 266.96),
            vehicletype = "car",
        },
        Garagem21 = {
            browse = vector3(217.6, -3074.56, 5.8),
            spawn = vector4(222.64, -3070.36, 5.68, 35.36),
            vehicletype = "car",
        },
        Garagem22 = {
            browse = vector3(3793.8, 4473.44, 5.4),
            spawn = vector4(3794.8, 4467.44, 5.6, 92.0),
            vehicletype = "car",
        },
        Garagem23 = {
            browse = vector3(-563.44, 5357.68, 70.2),
            spawn = vector4(-564.92, 5360.52, 70.2, 333.92),
            vehicletype = "car",
        },
        Garagem24 = {
            browse = vector3(-1586.8, 2792.92, 16.92),
            spawn = vector4(-1583.88, 2784.0, 16.92, 217.72),
            vehicletype = "car",
        },
        Garagem25 = {
            browse = vector3(363.84, 296.56, 103.48),
            spawn = vector4(360.56, 293.2, 103.52, 242.12),
            vehicletype = "car",
        },
        
        Hangar1 = {
            browse = vector4(-1274.35, -3381.59, 13.30, 331.31),
            vehicletype = "airplane",
        },
        Boat1 = {
            browse = vector4(1731.49, 3314.03, 40.6, 190.96),
            vehicletype = "boat",
        },
        Boat2 = {
            browse = vector4(2134.33, 4782.14, 40.3, 24.74),
            vehicletype = "boat",
        },
        Boat3 = {
            browse = vector3(-3424.05, 952.83, 7.8),
            spawn = vector4(-3425.4, 945.29, -0.22, 90.1),
            vehicletype = "boat"
        },
        
    },

    Impounds = {
        {
            Retrieve = vector3(483.73, -1312.26, 28.5), -- where you open the menu to retrieve the car
            Spawn = vector4(490.99, -1313.66, 28.83, 285.99), -- where the car spawns
            vehicletype = "car",
        },
        {
            Retrieve = vector3(1650.8, 3806.43, 37.9), -- where you open the menu to retrieve the car
            Spawn = vector4(1640.04, 3797.32, 33.83, 128.2), -- where the car spawns
            vehicletype = "car",
        },
        {
            Retrieve = vector3(-234.44, 6198.71, 31.3), -- where you open the menu to retrieve the car
            Spawn = vector4(-232.45, 6192.38, 30.49, 134.5), -- where the car spawns
            vehicletype = "car",
        },
        {
            Retrieve = vector3(-1467.7732, -504.4711, 32.05), -- where you open the menu to retrieve the car
            Spawn = vector4(-1475.1661, -501.3565, 32.4142, 300.5), -- where the car spawns
            vehicletype = "car",
        },
        {
            Retrieve = vector3(-1615.52, -3137.48, 13.3), -- where you open the menu to retrieve the plane
            Spawn = vector4(-1654.096, -3146.48, 13.57, 329.89), -- where the plane spawns
            vehicletype = "airplane",
        },
    }, 



    ------------------------------------- Stashes -------------------------------------------

    Lager = {																
        Locations = {                                                           -- add as many storages, as you want
        vector3(235.12, -976.04, -99.0) -- ,vector(x,y,z), vector(x,y,z), etc
    
        },
        Name				= "Garagem",                              -- name & id of the storage
        MarkerType			= 20,					-- marker type https://docs.fivem.net/docs/game-references/markers/
        MarkerColor 		= {r = 155, g = 0, b = 0},		-- color of the marker (rgb)
        MarkerSize			= {x = 0.5, y = 0.5, z = 0.5},		-- markersize
        MarkerDrawDistance	= 3.0					-- marker draw distance
        
    }
    

    
}
