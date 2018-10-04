Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 21 -- other MarkerType:'https://wiki.gt-mp.net/index.php?title=Marker'
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerColor                = { r = 24, g = 201, b = 137 } -- other colors:'https://www.w3schools.com/colors/colors_rgb.asp'
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = false --false
Config.EnableLicenses             = false
Config.MaxInService               = -1
Config.Locale                     = 'en'

Config.TheLostMCStations = {

  TheLostMC = {

    Blip = { --More Blips:'https://marekkraus.sk/gtav/blips/list.html'
      Pos     = { x = -86.089637756348, y = -677.46783447266, z = 35.270606994629 },
      Sprite  = 106,
      Display = 4,
      Scale   = 1.2,
      Colour  = 76,
    },

    AuthorizedWeapons = { --for another Weapons or Vehicle:'http://gta.wikia.com/wiki/The_Lost_MC'
      { name = 'WEAPON_COMBATPISTOL',     price = 4000 },
      { name = 'WEAPON_ASSAULTSMG',       price = 50000 },
      { name = 'WEAPON_ASSAULTRIFLE',     price = 80000 },
      { name = 'WEAPON_PUMPSHOTGUN',      price = 18000 },
      { name = 'WEAPON_STUNGUN',          price = 250 },
      { name = 'WEAPON_FLASHLIGHT',       price = 50 },
      { name = 'WEAPON_FIREEXTINGUISHER', price = 50 },
      { name = 'WEAPON_CARBINERIFLE',     price = 50000 },
      { name = 'WEAPON_ADVANCEDRIFLE',    price = 50000 },
      { name = 'WEAPON_SNIPERRIFLE',      price = 150000 },
      { name = 'WEAPON_SMOKEGRENADE',     price = 8000 },
      { name = 'WEAPON_APPISTOL',         price = 12000 },
      { name = 'WEAPON_FLARE',            price = 8000 },
      { name = 'WEAPON_SWITCHBLADE',      price = 500 },
	  { name = 'WEAPON_POOLCUE',          price = 100 },
	  
    },

	AuthorizedVehicles = {
	  { name = 'stockade',          label = 'Stockade' },
	  { name = 'kuruma',     label = 'brute' },
	  { name = 'riot',         label = 'riot' },
	  --{ name = 'Zombieb',        label = 'Zombie Chopper' },
	  --{ name = 'slamvan',        label = 'Slamvan' },
	  --{ name = 'GBurrito',       label = 'Gang Burrito' },
	  --{ name = 'maverick',       label = 'Helicopter' },
	  --{ name = 'sovereign',      label = 'Sovereign' },
	  --{ name = 'benson',         label = 'Benson' },		  
	  },

    Cloakrooms = {
      { x = 11.1283826928, y = -661.68029785156,z = 33.448944091797 },
    },

    Armories = {
      { x = 3.3622453212738, y = -659.61566162109, z = 33.450763702393 },
    },

    Vehicles = {
      {
        Spawner    = { x = -6.8975381851196, y = -662.56188964844, z = 33.480491638184 },
        SpawnPoint = { x = -4.4586071968079, y = -672.29949951172, z = 32.338066101074 },
        Heading    = 90.0,
      }
    },
	
	Helicopters = {
      {
        Spawner    = { x = 34.707504272461, y = -663.35778808594, z = 31.765117645264 },
        SpawnPoint = { x = 41.353076934814, y = -650.28118896484, z = 31.628652572632 },
        Heading    = 0.0,
      }
    },

    VehicleDeleters = {
      { x = -18.816955566406, y = -701.32659912109, z = 32.33810043335 },
    },

    BossActions = {
      { x = 11.710991859436, y = -666.55462642484, z = 33.448738098145 }
    },

  },

}
