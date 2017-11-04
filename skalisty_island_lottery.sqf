if (isServer) then {

		
			//skalisty island lottery box behind palace

_vehicle_107 = objNull;
		
		if (true) then
		{
		  _this = createVehicle ["BAF_VehicleBox", [13714, 2930.62, 0.00144156], [], 0, "CAN_COLLIDE"];
		  _vehicle_107 = _this;
		  _this setDir 20;
          _this setVariable ["permaLoot",true];
		  
		  clearWeaponCargoGlobal _this;
		  clearMagazineCargoGlobal _this;

		  
		  _this addMagazineCargoGlobal ["ItemAmethyst",20];
		  _this addMagazineCargoGlobal ["ItemTunaCooked",5];
		  _this addMagazineCargoGlobal ["ItemComboLock",2];
		  _this addMagazineCargoGlobal ["ItemTinBar",2];
		  _this addMagazineCargoGlobal ["ItemWoodStairs",2];
		  _this addMagazineCargoGlobal ["cinder_wall_kit",2];
		  _this addMagazineCargoGlobal ["CinderBlocks",6];
		  _this addMagazineCargoGlobal ["metal_floor_kit",2];
		  _this addMagazineCargoGlobal ["MortarBucket",2];
		  _this addMagazineCargoGlobal ["PartPlywoodPack",5];
		  _this addMagazineCargoGlobal ["PartPlankPack",5];
		  _this addMagazineCargoGlobal ["ItemWoodWallLg",2];
		  _this addMagazineCargoGlobal ["ItemWoodWallGarageDoor",2];
          _this addMagazineCargoGlobal ["ItemSodaOrangeSherbet",5];
		  _this addMagazineCargoGlobal ["Skin_SurvivorWurban_DZ",2];
		  _this addMagazineCargoGlobal ["Skin_SurvivorWpink_DZ",2];
		  _this addMagazineCargoGlobal ["Skin_Priest_DZ",2];
		  _this addMagazineCargoGlobal ["Skin_BanditW2_DZ",2];
		  _this addMagazineCargoGlobal ["Skin_Graves_Light_DZ",2];
		  _this addMagazineCargoGlobal ["Skin_CZ_Special_Forces_GL_DES_EP1_DZ",2];
		  _this addMagazineCargoGlobal ["Bandit2_DZ",2];

};

};