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

		  
		  _this addMagazineCargoGlobal ["ItemObsidian",16];
		  _this addMagazineCargoGlobal ["FishCookedTuna",5];
          _this addMagazineCargoGlobal ["ItemSodaOrangeSherbet",5];		  
		  _this addMagazineCargoGlobal ["ItemComboLock",2];
		  _this addMagazineCargoGlobal ["ItemTinBar",2];
		  _this addMagazineCargoGlobal ["cinder_door_kit",2];
		  _this addMagazineCargoGlobal ["half_cinder_wall_kit",4];
		  _this addMagazineCargoGlobal ["full_cinder_wall_kit",6];
		  _this addMagazineCargoGlobal ["metal_floor_kit",4];
		  _this addMagazineCargoGlobal ["MortarBucket",3];
		  _this addMagazineCargoGlobal ["CinderBlocks",9];
		  _this addMagazineCargoGlobal ["cinder_door_kit",1];
		  _this addMagazineCargoGlobal ["cinder_garage_kit",2];
		  _this addMagazineCargoGlobal ["metal_panel_kit",4];
		  _this addMagazineCargoGlobal ["fuel_pump_kit",1];
		  _this addMagazineCargoGlobal ["light_pole_kit",2];
		  _this addMagazineCargoGlobal ["storage_shed_kit",1];
		  _this addMagazineCargoGlobal ["Itemfirebarrel_kit",1];
		  _this addMagazineCargoGlobal ["Skin_SurvivorWpink_DZ",2];
		  _this addMagazineCargoGlobal ["Skin_USMC_Soldier_Officer_DZ",2];		  
		  _this addMagazineCargoGlobal ["Skin_FR_Marksman_DZ",2];		  
};

};
