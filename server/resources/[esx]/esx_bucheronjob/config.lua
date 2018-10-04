Config                            = {}
Config.DrawDistance               = 100.0
Config.MaxInService               = -1
Config.EnablePlayerManagement     = true
Config.EnableSocietyOwnedVehicles = false
Config.Locale                     = 'fr'

Config.Zones = {

	--RaisinFarm = {
	Woodfarm = {
		Pos   = {x = -534.323669433594, y = 5373.794921875, z = 69.503059387207},
		Size  = {x = 3.5, y = 3.5, z = 1.0},
		Color = {r = 2, g = 255, b = 0},
		Name  = "Récolte du Bois",
		Type  = 1
	},
 
--TraitementVin = {
	TraitementBois = {
		Pos   = {x = -552.214660644531, y = 5326.90966796875, z = 72.5996017456055},
		Size  = {x = 3.5, y = 3.5, z = 1.0},
		Color = {r = 2, g = 255, b = 0},
		Name  = "Traitement du Bois",
		Type  = 1
	},

--	TraitementJus = {
	TraitementPlank = {
		Pos   = {x = -501.386596679688, y = 5280.53076171875, z = 79.6187744140625},
		Size  = {x = 3.5, y = 3.5, z = 1.0},
		Color = {r = 2, g = 255, b = 0},
		Name  = "Traitement des planches",
		Type  = 1
	},

	TraitementPackage = {
		Pos   = {x = -501.386596679688, y = 5280.53076171875, z = 79.6187744140625},
		Size  = {x = 3.5, y = 3.5, z = 1.0},
		Color = {r = 2, g = 255, b = 0},
		Name  = "Traitement des planches",
		Type  = 1
	},

	
	SellFarm = {
		Pos   = {x = -123.52271270752, y = -1033.98852539063, z = 26.2735576629639},
		Size  = {x = 3.5, y = 3.5, z = 1.0},
		Color = {r = 2, g = 255, b = 0},
		Name  = "Vente des produits",
		Type  = 1
	},

--	BucheronsActions = {
	BucheronsActions = {
		Pos   = {x = -553.617370605469, y = 5348.8427734375, z = 73.7446212768555},
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Color = {r = 2, g = 255, b = 0},
		Name  = "Point d'action",
		Type  = 0
	 },
	  
	VehicleSpawner = {
		Pos   = {x = -590.992919921875, y = 5313.91748046875, z = 69.2144088745117},
		Size = {x = 1.5, y = 1.5, z = 1.0},
		Color = {r = 2, g = 255, b = 0},
		Name  = "Garage véhicule",
		Type  = 0
	},

	VehicleSpawnPoint = {
		Pos   = {x = -589.26416015625, y = 5300.708984375, z = 69.2144088745117},
		Size  = {x = 1.5, y = 1.5, z = 1.0},--cone marker
		Color = {r = 2, g = 255, b = 0},
		Name  = "Spawn point",
		Type  = -1
	},

	VehicleDeleter = {
		Pos   = {x = -598.8525390625, y = 5321.3120117188, z = 69.363899230957},
		Size  = {x = 3.0, y = 3.0, z = 0.5}, --round marker
		Color = {r = 136, g = 0, b = 0},
		Name  = "Ranger son véhicule",
		Type  = 1
	}

}
