Config                = {}
Config.DrawDistance   = 100
Config.Size           = { x = 1.5, y = 1.5, z = 1.5 }
Config.Color          = { r = 0, g = 128, b = 255 }
Config.Type           = 1
Config.Locale         = 'fr'
Config.EnableLicense  = true
Config.LicensePrice   = 30000

Config.Zones = {

    GunShop = {
        legal = 0,

        Items = {
            --{name  = "WEAPON_UNARMED", price = 100, label = "WEAPON_UNARMED"}, --Add a comma and duplicate the line to repeat the process. If finished, Do not add a comma at the end.
            {name = "WEAPON_FLAREGUN", price = 100, label = "Fusée de détresse"},
            {name = "WEAPON_UNARMED", price = 100, label = "WEAPON_UNARMED"},
            {name = "WEAPON_ANIMAL", price = 100, label = "WEAPON_ANIMAL"},
            {name = "WEAPON_COUGAR", price = 100, label = "WEAPON_COUGAR"},
            {name = "WEAPON_KNIFE", price = 100, label = "Couteau"},
            {name = "WEAPON_HAMMER", price = 100, label = "Marteau"},
            {name = "WEAPON_GOLFCLUB", price = 100, label = "Club de Golf"},
            {name = "WEAPON_CROWBAR", price = 100, label = "Pied de biche"},
            {name = "GADGET_PARACHUTE", price = 100, label = "Parachute"},
            {name = "WEAPON_SMOKEGRENADE", price = 100, label = "GRENADE fumigene"},
            {name = "WEAPON_DAGGER", price = 100, label = "Dagge"},
            {name = "WEAPON_BALL", price = 100, label = "Balle"},
            {name = "WEAPON_FLARE", price = 100, label = "Fumigéne"},
            {name = "WEAPON_BOTTLE", price = 100, label = "Bouteille"},
            {name = "WEAPON_HATCHET", price = 100, label = "Hache"},
            {name = "WEAPON_PETROLCAN", price = 100, label = "Bidon d'essence"},
            {name = "WEAPON_FIREEXTINGUISHER", price = 100, label = "Extincteur"},
            {name = "WEAPON_GRENADELAUNCHER_SMOKE", price = 100, label = "WEAPON_GRENADELAUNCHER_SMOKE"},
            {name = "WEAPON_SNOWBALL", price = 100, label = "Boule de Neige"},
            {name = "WEAPON_MACHETE", price = 100, label = "Machette"}


        },


        Items1 = {
            {name = "WEAPON_PISTOL", price = 100, label = "Pistolet"},
            {name = "WEAPON_COMBATPISTOL", price = 100, label = "COMBATPISTOL"},
            {name = "WEAPON_APPISTOL", price = 100, label = "WEAPON_APPISTOL"},
            {name = "WEAPON_PISTOL50", price = 100, label = "Desert EaGle .50"},
            {name = "WEAPON_MICROSMG", price = 100, label = "MICROSMG"},
            {name = "WEAPON_COMBATMG", price = 100, label = "WEAPON_COMBATMG"},
            {name = "WEAPON_PUMPSHOTGUN", price = 100, label = "WEAPON_PUMPSHOTGUN"},
            {name = "WEAPON_SAWNOFFSHOTGUN", price = 100, label = "WEAPON_SAWNOFFSHOTGUN"},
            {name = "WEAPON_ASSAULTSHOTGUN", price = 100, label = "WEAPON_ASSAULTSHOTGUN"},
            {name = "WEAPON_BULLPUPSHOTGUN", price = 100, label = "WEAPON_BULLPUPSHOTGUN"},
            {name = "WEAPON_STUNGUN", price = 100, label = "WEAPON_STUNGUN"},
            {name = "WEAPON_SNIPERRIFLE", price = 100, label = "WEAPON_SNIPERRIFLE"},
            {name = "WEAPON_HEAVYSNIPER", price = 100, label = "WEAPON_HEAVYSNIPER"},
            {name = "WEAPON_REMOTESNIPER", price = 100, label = "WEAPON_REMOTESNIPER"},
            {name = "WEAPON_BULLPUPRIFLE", price = 100, label = "WEAPON_BULLPUPRIFLE"},
            {name = "WEAPON_SNSPISTOL", price = 100, label = "WEAPON_SNSPISTOL"},
            {name = "WEAPON_GUSENBERG", price = 100, label = "WEAPON_GUSENBERG"},
            {name = "WEAPON_FIREWORK", price = 100, label = "WEAPON_FIREWORK"},
            {name = "WEAPON_COMBATPDW", price = 100, label = "WEAPON_COMBATPDW"},
            {name = "WEAPON_MARKSMANPISTOL", price = 100, label = "WEAPON_MARKSMANPISTOL"},
            {name = "WEAPON_MACHINEPISTOL", price = 100, label = "WEAPON_MACHINEPISTOL"},
            {name = "WEAPON_SWITCHBLADE", price = 100, label = "WEAPON_SWITCHBLADE"},
            {name = "WEAPON_REVOLVER", price = 100, label = "WEAPON_REVOLVER"},
            {name = "WEAPON_DBSHOTGUN", price = 100, label = "WEAPON_DBSHOTGUN"},
            {name = "WEAPON_COMPACTRIFLE", price = 100, label = "WEAPON_COMPACTRIFLE"},
            {name = "WEAPON_AUTOSHOTGUN", price = 100, label = "WEAPON_AUTOSHOTGUN"},
            {name = "WEAPON_BATTLEAXE", price = 100, label = "WEAPON_BATTLEAXE"},
            {name = "WEAPON_PIPEBOMB", price = 100, label = "WEAPON_PIPEBOMB"}
           --   {name = "WEAPON_POOLCUE", price = 100, label = "WEAPON_POOLCUE"},
           -- {name = "WEAPON_WRENCH", price = 100, label = "WEAPON_WRENCH"},
           -- {name = "GADGET_NIGHTVISION", price = 100, label = "GADGET_NIGHTVISION"}
        },


        Items2 = {

            {name = "WEAPON_NIGHTSTICK", price = 100, label = "WEAPON_NIGHTSTICK"},
            {name = "WEAPON_GRENADELAUNCHER", price = 100, label = "WEAPON_GRENADELAUNCHER"},
            {name = "WEAPON_SMG", price = 100, label = "WEAPON_SMG"},
            {name = "WEAPON_GRENADE", price = 100, label = "WEAPON_GRENADE"},
            {name = "WEAPON_STICKYBOMB", price = 100, label = "WEAPON_STICKYBOMB"},
            {name = "WEAPON_MOLOTOV", price = 100, label = "WEAPON_MOLOTOV"},
            {name = "WEAPON_ASSAULTSMG", price = 100, label = "WEAPON_ASSAULTSMG"},
            {name = "WEAPON_ASSAULTRIFLE", price = 100, label = "WEAPON_ASSAULTRIFLE"},
            {name = "WEAPON_CARBINERIFLE", price = 100, label = "WEAPON_CARBINERIFLE"},
            {name = "WEAPON_ADVANCEDRIFLE", price = 100, label = "WEAPON_ADVANCEDRIFLE"},
            {name = "WEAPON_SPECIALCARBINE", price = 100, label = "WEAPON_SPECIALCARBINE"},
            {name = "WEAPON_HEAVYPISTOL", price = 100, label = "WEAPON_HEAVYPISTOL"},
            {name = "WEAPON_HEAVYSHOTGUN", price = 100, label = "WEAPON_HEAVYSHOTGUN"},
            {name = "WEAPON_MARKSMANRIFLE", price = 100, label = "WEAPON_MARKSMANRIFLE"}



        },

        Pos   = {
            { x = -662.180,   y = -934.961,   z = 20.829 },
            { x = 810.25,     y = -2157.60,   z = 28.62 },
            { x = 1693.44,    y = 3760.16,    z = 33.71 },
            { x = -330.24,    y = 6083.88,    z = 30.45 },
            { x = 252.63,     y = -50.00,     z = 68.94 },
            { x = 22.09,      y = -1107.28,   z = 28.80 },
            { x = 2567.69,    y = 294.38,     z = 107.73 },
            { x = -1117.58,   y = 2698.61,    z = 17.55 },
            { x = 842.44,     y = -1033.42,   z = 27.19 },

        }
    },




    BlackWeashop = {
        legal = 1, --1
        Items2 = {
            --{name = "WEAPON_MINIGUN", price = 100, label = "WEAPON_MINIGUN"},
            --{name = "WEAPON_RAILGUN", price = 100, label = "WEAPON_RAILGUN"},
            --{name = "WEAPON_AIR_DEFENCE_GUN", price = 100, label = "WEAPON_AIR_DEFENCE_GUN"},
            {name = "WEAPON_COMPACTLAUNCHER", price = 100, label = "WEAPON_COMPACTLAUNCHER"},
            {name = "WEAPON_MINISMG", price = 100, label = "WEAPON_MINISMG"},
            {name = "WEAPON_HOMINGLAUNCHER", price = 100, label = "WEAPON_HOMINGLAUNCHER"},
            {name = "WEAPON_PROXMINE", price = 100, label = "WEAPON_PROXMINE"},

            {name = "WEAPON_BZGAS", price = 100, label = "Gas Poison"}
        },
        Pos   = {
            { x = -1306.239,   y = -394.018,  z = 35.695 },
        }
    },

}
