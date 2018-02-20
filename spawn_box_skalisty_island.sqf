private ["_crate","_crate2"];

DZMSProtectObj = {
	private ["_object","_objectID"];
	_object = _this select 0;
	
	_objectID = str(round(random 999999));
	_object setVariable ["ObjectID", _objectID, true];
	_object setVariable ["ObjectUID", _objectID, true];
	
	if (_object isKindOf "ReammoBox") then {
		// PermaLoot on top of ObjID because that "arma logic"
		_object setVariable ["permaLoot",true];
		_object setVariable ["Mission", "1", true];
	}; 
};

//This is _crate
WeaponBox = {
private ["_object","_crate"];
_crate = _this select 0;
_wpns = ["Mosin_PU_DZ","m8_sharpshooter","M4SPR","M14_DZ","M14_Gh_DZ","M14_CCO_DZ","M14_Holo_DZ","M14_CCO_Gh_DZ","M14_Holo_Gh_DZ","CZ550_DZ","M24_DZ","M24_Gh_DZ","M24_des_EP1","M40A3_DZ","M40A3_Gh_DZ","SVD_DZ",
		"SVD_Gh_DZ","SVD_PSO1_DZ","SVD_PSO1_Gh_DZ","SVD_des_EP1","FNFAL_DZ","FNFAL_CCO_DZ","FNFAL_Holo_DZ","FN_FAL_ANPVS4_DZE","SCAR_H_LNG_Sniper","SCAR_H_LNG_Sniper_SD","M110_NVG_EP1","DMR_DZ","DMR_Gh_DZ","BAF_LRR_scoped",
		"BAF_LRR_scoped_W","VSS_Vintorez","M249_m145_EP1_DZE","M8_SAW","m240_scoped_EP1_DZE","M60A4_EP1_DZE","MG36_camo","MG36","BAF_L86A2_ACOG","L110A1_DZ","L110A1_CCO_DZ","L110A1_Holo_DZ","M249_DZ","M249_CCO_DZ",
		"M249_Holo_DZ","M240_DZ","M240_CCO_DZ","M240_Holo_DZ","Mk48_DZ","Mk48_CCO_DZ","Mk48_Holo_DZ","RPK_DZ","RPK_Kobra_DZ","RPK_PSO1_DZ","RPK74_DZ","RPK74_Kobra_DZ","RPK74_PSO1_DZ","UK59_DZ","PKM_DZ","Pecheneg_DZ",
		"AKS74U_DZ","AKS74U_Kobra_DZ","AKS74U_SD_DZ","AKS74U_Kobra_SD_DZ","AKM_DZ","AKM_Kobra_DZ","AKM_PSO1_DZ","AK74_DZ","AK74_Kobra_DZ","AK74_PSO1_DZ","AK74_GL_DZ","AK74_SD_DZ","AK74_Kobra_SD_DZ","AK74_PSO1_SD_DZ",
		"AK74_GL_SD_DZ","AK74_GL_Kobra_DZ","AK74_GL_PSO1_DZ","AK74_GL_Kobra_SD_DZ","AK74_GL_PSO1_SD_DZ","L85A2_DZ","L85A2_FL_DZ","L85A2_MFL_DZ","L85A2_SD_DZ","L85A2_SD_FL_DZ","L85A2_SD_MFL_DZ","L85A2_CCO_DZ",
		"L85A2_CCO_FL_DZ","L85A2_CCO_MFL_DZ","L85A2_CCO_SD_DZ","L85A2_CCO_SD_FL_DZ","L85A2_CCO_SD_MFL_DZ","L85A2_Holo_DZ","L85A2_Holo_FL_DZ","L85A2_Holo_MFL_DZ","L85A2_Holo_SD_DZ","L85A2_Holo_SD_FL_DZ",
		"L85A2_Holo_SD_MFL_DZ","L85A2_ACOG_DZ","L85A2_ACOG_FL_DZ","L85A2_ACOG_MFL_DZ","L85A2_ACOG_SD_DZ","L85A2_ACOG_SD_FL_DZ","L85A2_ACOG_SD_MFL_DZ","SA58_DZ","SA58_RIS_DZ","SA58_RIS_FL_DZ","SA58_RIS_MFL_DZ","SA58_CCO_DZ",
		"SA58_CCO_FL_DZ","SA58_CCO_MFL_DZ","SA58_Holo_DZ","SA58_Holo_FL_DZ","SA58_Holo_MFL_DZ","SA58_ACOG_DZ","SA58_ACOG_FL_DZ","SA58_ACOG_MFL_DZ","Sa58V_CCO_EP1","Sa58V_RCO_EP1","M4A1_AIM_SD_camo","M4A1_DZ","M4A1_FL_DZ",
		"M4A1_MFL_DZ","M4A1_SD_DZ","M4A1_SD_FL_DZ","M4A1_SD_MFL_DZ","M4A1_CCO_DZ","M4A1_CCO_FL_DZ","M4A1_CCO_MFL_DZ","M4A1_CCO_SD_DZ","M4A1_CCO_SD_FL_DZ","M4A1_CCO_SD_MFL_DZ","M4A1_Holo_DZ","M4A1_Holo_FL_DZ","M4A1_Holo_MFL_DZ",
		"M4A1_Holo_SD_DZ","M4A1_Holo_SD_FL_DZ","M4A1_Holo_SD_MFL_DZ","M4A1_ACOG_DZ","M4A1_ACOG_FL_DZ","M4A1_ACOG_MFL_DZ","M4A1_ACOG_SD_DZ","M4A1_ACOG_SD_FL_DZ","M4A1_ACOG_SD_MFL_DZ","M4A1_GL_DZ","M4A1_GL_FL_DZ","M4A1_GL_MFL_DZ",
		"M4A1_GL_SD_DZ","M4A1_GL_SD_FL_DZ","M4A1_GL_SD_MFL_DZ","M4A1_GL_CCO_DZ","M4A1_GL_CCO_FL_DZ","M4A1_GL_CCO_MFL_DZ","M4A1_GL_CCO_SD_DZ","M4A1_GL_CCO_SD_FL_DZ","M4A1_GL_CCO_SD_MFL_DZ","M4A1_GL_Holo_DZ","M4A1_GL_Holo_FL_DZ",
		"M4A1_GL_Holo_MFL_DZ","M4A1_GL_Holo_SD_DZ","M4A1_GL_Holo_SD_FL_DZ","M4A1_GL_Holo_SD_MFL_DZ","M4A1_GL_ACOG_DZ","M4A1_GL_ACOG_FL_DZ","M4A1_GL_ACOG_MFL_DZ","M4A1_GL_ACOG_SD_DZ","M4A1_GL_ACOG_SD_FL_DZ",
		"M4A1_GL_ACOG_SD_MFL_DZ","M4A1_HWS_GL_camo","M4A1_HWS_GL_SD_Camo","M4A3_CCO_EP1","M16A2_DZ","M16A2_GL_DZ","M16A4_DZ","M16A4_CCO_DZ","M16A4_Holo_DZ","M16A4_ACOG_DZ","M16A4_GL_DZ","M16A4_FL_DZ","M16A4_MFL_DZ",
		"M16A4_CCO_FL_DZ","M16A4_Holo_FL_DZ","M16A4_ACOG_FL_DZ","M16A4_GL_FL_DZ","M16A4_CCO_MFL_DZ","M16A4_Holo_MFL_DZ","M16A4_ACOG_MFL_DZ","M16A4_GL_MFL_DZ","M16A4_GL_CCO_DZ","M16A4_GL_Holo_DZ","M16A4_GL_ACOG_DZ",
		"M16A4_GL_CCO_FL_DZ","M16A4_GL_Holo_FL_DZ","M16A4_GL_ACOG_FL_DZ","M16A4_GL_CCO_MFL_DZ","M16A4_GL_Holo_MFL_DZ","M16A4_GL_ACOG_MFL_DZ","G36_C_SD_camo","G36C_DZ","G36C_CCO_DZ","G36C_Holo_DZ","G36C_ACOG_DZ","G36C_SD_DZ",
		"G36C_CCO_SD_DZ","G36C_Holo_SD_DZ","G36C_ACOG_SD_DZ","G36C_camo","G36A_Camo_DZ","G36K_Camo_DZ","G36K_Camo_SD_DZ"];

_pstl = ["M9_DZ","M9_SD_DZ","G17_DZ","G17_FL_DZ","G17_MFL_DZ","G17_SD_DZ","G17_SD_FL_DZ","G17_SD_MFL_DZ","Makarov_DZ","Makarov_SD_DZ","Revolver_DZ","revolver_gold_EP1","M1911_DZ","Sa61_EP1","PDW_DZ","UZI_SD_EP1"];

_bld = ["CinderBlocks","MortarBucket","ItemTankTrap","ItemPole","PartGeneric","PartPlywoodPack","PartPlankPack","ItemTent","ItemDomeTent","ItemSandbag",
		"ItemWire","ItemGenerator","forest_net_kit","ItemWoodStairs","ItemWoodStairsSupport","ItemWoodLadder","ItemWoodWall","ItemWoodWallThird","ItemWoodWallDoor",
		"ItemWoodWallWithDoor","ItemWoodWallGarageDoor","light_pole_kit","metal_panel_kit","wood_ramp_kit","bulk_ItemSandbag","bulk_ItemTankTrap","bulk_ItemTankTrapHalf","bulk_PartGeneric",
		"deer_stand_kit","fuel_pump_kit","sandbag_nest_kit","storage_shed_kit","ItemFuelPump","ItemScaffoldingKit"];

_bld_rare = ["metal_floor_kit","plot_pole_kit","cinder_door_kit","cinder_garage_kit","full_cinder_wall_kit","ItemRuby",
			 "ItemPlotDeed","ItemORP","ItemAVE","ItemLRK","ItemTNK","ItemVault"];

_tools = ["ItemToolbox","ItemCrowbar","ItemKnife","ItemEtool","ItemHatchet","ItemMatchbox","Binocular_Vector","ItemCompass","ItemFishingPole","ItemFlashlightRed","ItemGPS","NVGoggles_DZE"];

// Define lists. Some lists are defined in DZMSWeaponCrateList.sqf in the ExtConfig.

_bpackList = ["DZ_LargeGunBag_EP1","DZ_British_ACU","DZ_CivilBackpack_EP1","DZ_Backpack_EP1"];

_gshellList = ["HandGrenade_west","FlareGreen_M203","FlareWhite_M203","1Rnd_HE_M203","FlareRed_M203","FlareYellow_M203","Skin_GUE_Soldier_MG_DZ","Skin_GUE_Soldier_Sniper_DZ","Skin_GUE_Soldier_Crew_DZ",
			   "Skin_GUE_Soldier_CO_DZ","Skin_GUE_Soldier_2_DZ","Skin_TK_INS_Warlord_EP1_DZ","Skin_CZ_Special_Forces_GL_DES_EP1_DZ","6Rnd_HE_M203","6Rnd_FlareWhite_M203","6Rnd_FlareGreen_M203","6Rnd_SmokeRed_M203"];

_medical = ["ItemBandage","ItemMorphine","ItemEpinephrine","ItemPainkiller","FoodMRE","ItemAntibiotic","ItemBloodbag","ItemSodaRabbit"];

_money = ["ItemCitrine","ItemKiloHemp","ItemBriefcase100oz"];


	_scount = count _gshellList;
	for "_x" from 0 to 8 do {
		_sSelect = floor(random _sCount);
		_item = _gshellList select _sSelect;
		_crate addMagazineCargoGlobal [_item,(round(random 2))];
	};
   
	// load packs
	_scount = count _bpackList;
	for "_x" from 0 to 2 do {
		_sSelect = floor(random _sCount);
		_item = _bpackList select _sSelect;
		_crate addBackpackCargoGlobal [_item,1];
	};
	 
	// load pistols
	_scount = count _pstl;
	for "_x" from 0 to 4 do {
		_sSelect = floor(random _sCount);
		_item = _pstl select _sSelect;
		_crate addWeaponCargoGlobal [_item,1];
		_ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
		if (count _ammo > 0) then {
			_crate addMagazineCargoGlobal [(_ammo select 0),(round(random 4))];
		};
	};

	//load primary
	_scount = count _wpns;
	for "_x" from 0 to 4 do {
		_sSelect = floor(random _sCount);
		_item = _wpns select _sSelect;
		_crate addWeaponCargoGlobal [_item,1];
		_ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
		if (count _ammo > 0) then {
			_crate addMagazineCargoGlobal [(_ammo select 0),(round(random 4))];
		};
	};
	
	_scount = count _money;
	for "_x" from 0 to 4 do {
		_sSelect = floor(random _sCount);
		_item = _money select _sSelect;
		_crate addMagazineCargoGlobal [_item,(round(random 2))];
	};
	_scount = count _medical;
	for "_x" from 0 to 8 do {
		_sSelect = floor(random _sCount);
		_item = _medical select _sSelect;
		_crate addMagazineCargoGlobal [_item,(round(random 2))];
	};
};

//This is _crate2
BuildBox = {
private ["_object","_crate2"];
_crate2 = _this select 0;

_wpns = ["vil_AEK2","vil_AEK_GL","vil_AeK_3","vil_AeK_23","vil_AeK_3_K","vil_AK_105","Vil_AK_105_c","vil_AK_101",
		"vil_AK_103","vil_AK_107","Vil_AK_107_c","vil_ak12","vil_ak12_ap","vil_ak12_gp","vil_AK_47","vil_AK_47_49","vil_AK_47_m1","vil_AK_47","vil_AK_74_N","vil_AK_74P","vil_AK_74m","vil_AK_74m_p29","vil_AK_74m_EOT_Alfa",
		"vil_AK_74m_gp_29","vil_AK_74m_gp","vil_AK_74m_EOT","vil_AK_74m_EOT_FSB","vil_AK_74m_EOT_FSB_60","vil_AK_74m_EOT_FSB_45","vil_AK_74m_c","vil_AK_74m_k","vil_AK_74m_PSO","vil_AKM","vil_AKM_GL","vil_AKMS","vil_AKMS_GP25",
		"vil_AKMSB","vil_AKS_47","vil_AKS_74","vil_AKS_74_gp","vil_AKS_74p_gp","vil_AKS_74p","vil_AKS_74p_45","vil_AKs_74_u","vil_AKs_74_u45","Vil_AKS_74_UB","Vil_AKS_74_UN_kobra","vil_AMD63","vil_AMD","vil_Abakan",
		"vil_Abakan_P29","vil_Abakan_gp","vil_AK_nato_m1","vil_ASH82","vil_MPi","vil_PMI74S","vil_PMI","vil_PMIS","vil_type88_1","vil_M64","vil_M70","vil_M70B","vil_AK_nato_m80","vil_Galil","vil_Galil_arm","vil_SKS",
		"gms_k98","gms_k98_knife","gms_k98_rg","gms_k98zf39","FHQ_ACR_BLK_CCO_GL_SD","FHQ_ACR_TAN_CCO_GL_SD","FHQ_ACR_SNW_CCO_GL_SD","FHQ_ACR_WDL_CCO_GL_SD","FHQ_ACR_BLK_CCO_SD","FHQ_ACR_TAN_CCO_SD","FHQ_ACR_SNW_CCO_SD",
		"FHQ_ACR_WDL_CCO_SD","FHQ_ACR_BLK_G33_GL_SD","FHQ_ACR_TAN_G33_GL_SD","FHQ_ACR_SNW_G33_GL_SD","FHQ_ACR_WDL_G33_GL_SD","FHQ_ACR_BLK_G33_SD","FHQ_ACR_TAN_G33_SD","FHQ_ACR_SNW_G33_SD","FHQ_ACR_WDL_G33_SD",
		"FHQ_ACR_BLK_HAMR_GL_SD","FHQ_ACR_TAN_HAMR_GL_SD","FHQ_ACR_SNW_HAMR_GL_SD","FHQ_ACR_WDL_HAMR_GL_SD","FHQ_ACR_BLK_HAMR_SD","FHQ_ACR_TAN_HAMR_SD","FHQ_ACR_SNW_HAMR_SD","FHQ_ACR_WDL_HAMR_SD","FHQ_ACR_BLK_HWS_GL_SD",
		"FHQ_ACR_TAN_HWS_GL_SD","FHQ_ACR_SNW_HWS_GL_SD","FHQ_ACR_WDL_HWS_GL_SD","FHQ_ACR_BLK_HWS_SD","FHQ_ACR_TAN_HWS_SD","FHQ_ACR_SNW_HWS_SD","FHQ_ACR_WDL_HWS_SD","FHQ_ACR_BLK_IRN_GL_SD","FHQ_ACR_TAN_IRN_GL_SD",
		"FHQ_ACR_SNW_IRN_GL_SD","FHQ_ACR_WDL_IRN_GL_SD","FHQ_ACR_BLK_RCO_GL_SD","FHQ_ACR_TAN_RCO_GL_SD","FHQ_ACR_SNW_RCO_GL_SD","FHQ_ACR_WDL_RCO_GL_SD","FHQ_ACR_BLK_RCO_SD","FHQ_ACR_TAN_RCO_SD","FHQ_ACR_SNW_RCO_SD",
		"FHQ_ACR_WDL_RCO_SD","FHQ_ACR_BLK_IRN_SD","FHQ_ACR_TAN_IRN_SD","FHQ_ACR_SNW_IRN_SD","FHQ_ACR_WDL_IRN_SD","FHQ_ACR_BLK_IRN","FHQ_ACR_TAN_IRN","FHQ_ACR_SNW_IRN","FHQ_ACR_WDL_IRN","FHQ_ACR_BLK_CCO","FHQ_ACR_TAN_CCO",
		"FHQ_ACR_SNW_CCO","FHQ_ACR_WDL_CCO","FHQ_ACR_BLK_CCO_GL","FHQ_ACR_TAN_CCO_GL","FHQ_ACR_SNW_CCO_GL","FHQ_ACR_WDL_CCO_GL","FHQ_ACR_BLK_G33","FHQ_ACR_TAN_G33","FHQ_ACR_SNW_G33","FHQ_ACR_WDL_G33","FHQ_ACR_BLK_G33_GL",
		"FHQ_ACR_TAN_G33_GL","FHQ_ACR_SNW_G33_GL","FHQ_ACR_WDL_G33_GL","FHQ_ACR_BLK_HAMR","FHQ_ACR_TAN_HAMR","FHQ_ACR_SNW_HAMR","FHQ_ACR_WDL_HAMR","FHQ_ACR_BLK_HAMR_GL","FHQ_ACR_TAN_HAMR_GL","FHQ_ACR_SNW_HAMR_GL",
		"FHQ_ACR_WDL_HAMR_GL","FHQ_ACR_BLK_HWS","FHQ_ACR_TAN_HWS","FHQ_ACR_SNW_HWS","FHQ_ACR_WDL_HWS","FHQ_ACR_BLK_HWS_GL","FHQ_ACR_TAN_HWS_GL","FHQ_ACR_SNW_HWS_GL","FHQ_ACR_WDL_HWS_GL","FHQ_ACR_BLK_IRN_GL",
		"FHQ_ACR_TAN_IRN_GL","FHQ_ACR_SNW_IRN_GL","FHQ_ACR_WDL_IRN_GL","FHQ_ACR_BLK_RCO","FHQ_ACR_TAN_RCO","FHQ_ACR_SNW_RCO","FHQ_ACR_WDL_RCO","FHQ_ACR_BLK_RCO_GL","FHQ_ACR_TAN_RCO_GL","FHQ_ACR_SNW_RCO_GL","FHQ_ACR_WDL_RCO_GL",
		"SCAR_L_CQC_CCO_SD","SCAR_L_CQC","SCAR_L_CQC_Holo","SCAR_L_CQC_EGLM_Holo","SCAR_L_STD_EGLM_RCO","SCAR_L_STD_HOLO","SCAR_L_STD_Mk4CQT","SCAR_H_CQC_CCO","SCAR_H_CQC_CCO_SD","SCAR_H_STD_EGLM_Spect","SCAR_H_LNG_Sniper",
		"SCAR_H_LNG_Sniper_SD","vil_9a91","vil_9a91_c","vil_9a91_csd","vil_VAL","vil_VAL_C","vil_Groza_HG","vil_Groza_GL","vil_Groza_SC","vil_Groza_SD","vil_Vikhr","vil_vsk94","vil_MP5_EOTech","vil_MP5SD_EOTech",
		"vil_uzimini","vil_uzimini_SD","vil_uzi","vil_uzi_c","vil_uzi_SD","USSR_cheytacM200","USSR_cheytacM200_sd","vil_SVD_63","vil_SVD_N","vil_SVD_M","vil_SVD_P21","vil_SVD_S","FHQ_MSR_DESERT","FHQ_MSR_NV_DESERT",
		"FHQ_MSR_NV_SD_DESERT","FHQ_MSR_SD_DESERT","FHQ_RSASS_TAN","FHQ_RSASS_SD_TAN","vil_SV_98_69","vil_SV_98","vil_SV_98_SD","vil_SVDK","FHQ_XM2010_DESERT","FHQ_XM2010_NV_DESERT","FHQ_XM2010_NV_SD_DESERT","FHQ_XM2010_SD_DESERT",	
		"RH_ctar21","RH_ctar21glacog","RH_ctar21m","RH_ctar21mgl","RH_star21","vil_AG3","vil_G3a2","vil_G3a3","vil_G3an","vil_G3anb","vil_G3SG1","vil_G3sg1b","vil_G3TGS","vil_G3TGSb","vil_G3ZF","vil_G3zfb","vil_G3a4","vil_G3a4b",
		"RH_masacog","RH_masaim","RH_masbaim","RH_masb","RH_masbeotech","RH_mas","RH_massd","RH_massdacog","RH_masbsdacog","RH_massdaim","RH_masbsdaim","RH_masbsd","RH_massdeotech","RH_masbsdeotech","vil_RPK75_Romania",
		"vil_M240_B","vil_M249_Para","skavil_M60","skavil_M60e3","vil_Mg3","vil_MG4","vil_MG4E","vil_PKP","vil_PKP_EOT","vil_PK","vil_PKM","vil_RPD","vil_RPK","vil_RPK75","vil_RPK74","vil_RPK74M","vil_RPK74M_P29","vil_RPK75_M72",
		"vil_zastava_m84","RH_hk417","RH_hk417acog","RH_hk417aim","RH_hk417s","RH_hk417sacog","RH_hk417saim","RH_hk417seotech","RH_hk417eotech","RH_hk417sd","RH_hk417sdacog","RH_hk417sdaim","RH_hk417sdeotech","RH_hk417sdsp",
		"RH_hk417sp","RH_hk417sglacog","RH_hk417sgl","RH_hk417sglaim","RH_hk417sgleotech","RH_hk416","RH_hk416glacog","RH_hk416gl","RH_hk416aim","RH_hk416glaim","RH_hk416s","RH_hk416sacog","RH_hk416sglacog","RH_hk416saim",
		"RH_hk416sglaim","RH_hk416seotech","RH_hk416sgleotech","RH_hk416sgl","RH_hk416eotech","RH_hk416gleotech","RH_hk416sd","RH_hk416sdgl","RH_hk416sdglaim","RH_hk416sdeotech","RH_hk416sdgleotech","vil_AG36KA4","vil_AG36KV",
		"vil_G36KSKdes","vil_G36KA4","vil_G36KSKES","vil_G36KSKdesES","vil_G36KES","vil_G36KVZ","vil_G36KSK","vil_G36VA4Eot","vil_G36KV3","vil_G36KVA4","vil_G36KV3Des","vil_G36VA4","vil_AG36","vil_G36a2","vil_AG36A2",
		"vil_G36CC","vil_G36E","vil_HK417s","vil_M110","vil_M110sd","RH_m14","vil_M14G","RH_m14acog","RH_m14aim","RH_m14eot","RH_m1s","RH_m1sacog","RH_m1saim","RH_m1seot","RH_m1sshd","RH_m1ssp","RH_m1st","RH_m1stacog",
		"RH_m1staim","RH_m1steot","RH_m1stshd","RH_m1stsp","RH_m21","vil_M21G","RH_sc2","RH_sc2acog","RH_sc2aim","RH_sc2eot","RH_sc2shd","RH_sc2sp","vil_SR25","vil_SR25SD"];		
		
_pstl = ["RH_m9","RH_m9c","RH_m93r","RH_M9sd","RH_m9csd","RH_browninghp","vil_B_HP","RH_anac","RH_anacg","RH_python","RH_deagle","RH_Deagleg","RH_Deaglem","RH_Deaglemzb","RH_Deaglemz","RH_Deagles",
		"vil_Glock","RH_g17","vil_Glock_o","RH_g17sd","RH_g18","RH_g19","RH_g19t","RH_tec9","RH_m1911","RH_m1911sd","RH_m1911old","RH_mk22","RH_mk22sd","RH_mk22v","RH_mk22vsd","RH_p38","RH_ppk",
		"RH_mk2","RH_p226","RH_p226s","RH_bull","RH_tt33","RH_usp","RH_uspm","RH_uspsd","vil_USP45","vil_USP45SD","vil_USP","vil_USPSD","RH_vz61"];
		
_bld = ["CinderBlocks","MortarBucket","ItemTankTrap","ItemPole","PartGeneric","PartPlywoodPack","PartPlankPack","ItemTent","ItemDomeTent","ItemSandbag",
		"ItemWire","ItemGenerator","forest_net_kit","ItemWoodStairs","ItemWoodStairsSupport","ItemWoodLadder","ItemWoodWall","ItemWoodWallThird","ItemWoodWallDoor",
		"ItemWoodWallWithDoor","ItemWoodWallGarageDoor","light_pole_kit","metal_panel_kit","wood_ramp_kit","bulk_ItemSandbag","bulk_ItemTankTrap","bulk_ItemTankTrapHalf","bulk_PartGeneric",
		"deer_stand_kit","fuel_pump_kit","sandbag_nest_kit","storage_shed_kit","ItemFuelPump","ItemScaffoldingKit"];

_bld_rare = ["metal_floor_kit","plot_pole_kit","cinder_door_kit","cinder_garage_kit","full_cinder_wall_kit","ItemRuby",
			 "ItemPlotDeed","ItemORP","ItemAVE","ItemLRK","ItemTNK","ItemVault"];

_tools = ["ItemToolbox","ItemCrowbar","ItemKnife","ItemEtool","ItemHatchet","ItemMatchbox","Binocular_Vector","ItemCompass","ItemFishingPole","ItemFlashlightRed","ItemGPS","NVGoggles_DZE"];

_bpackList = ["DZ_LargeGunBag_EP1","DZ_British_ACU","DZ_CivilBackpack_EP1","DZ_Backpack_EP1"];

_gshellList = ["HandGrenade_west","FlareGreen_M203","FlareWhite_M203","1Rnd_HE_M203","FlareRed_M203","FlareYellow_M203","Skin_GUE_Soldier_MG_DZ","Skin_GUE_Soldier_Sniper_DZ","Skin_GUE_Soldier_Crew_DZ",
			   "Skin_GUE_Soldier_CO_DZ","Skin_GUE_Soldier_2_DZ","Skin_TK_INS_Warlord_EP1_DZ","Skin_CZ_Special_Forces_GL_DES_EP1_DZ","6Rnd_HE_M203","6Rnd_FlareWhite_M203","6Rnd_FlareGreen_M203","6Rnd_SmokeRed_M203"];

_medical = ["ItemBandage","ItemMorphine","ItemEpinephrine","ItemPainkiller","FoodMRE","ItemAntibiotic","ItemBloodbag","ItemSodaRabbit"];

_money = ["ItemCitrine","ItemKiloHemp","ItemBriefcase100oz"];


	// load tools
	_scount = count _tools;
	for "_x" from 0 to 6 do {
		_sSelect = floor(random _sCount);
		_item = _tools select _sSelect;
		_crate2 addWeaponCargoGlobal [_item, 1];
	};
	
	// load construction
	_scount = count _bld_rare;
	for "_x" from 0 to 6 do {
		_sSelect = floor(random _sCount);
		_item = _bld_rare select _sSelect;
		_crate2 addMagazineCargoGlobal [_item,1];
	};
	_scount = count _bld;
	for "_x" from 0 to 20 do {
		_sSelect = floor(random _sCount);
		_item = _bld select _sSelect;
		_crate2 addMagazineCargoGlobal [_item,(round(random 2))];
	};
	_scount = count _money;
	for "_x" from 0 to 4 do {
		_sSelect = floor(random _sCount);
		_item = _money select _sSelect;
		_crate2 addMagazineCargoGlobal [_item,(round(random 2))];
	};
	_scount = count _medical;
	for "_x" from 0 to 8 do {
		_sSelect = floor(random _sCount);
		_item = _medical select _sSelect;
		_crate2 addMagazineCargoGlobal [_item,(round(random 2))];
	};
};	
	


_coords =  [[14072.7, 2824.46, 0], [13602.9, 3141.8, 0], [13413.9, 2761.31, 0], [13696.2, 2991.8, 0], [13267.7, 3235.02, 0]] call BIS_fnc_selectRandom;  //epoch weapons
_coords2 = [[13788.6, 2950.67, 0], [13310.8, 2734.6, 0], [13920.5, 2918.4, 0], [14067.9, 2770.47, 0], [13456.6, 3327.34, 0]] call BIS_fnc_selectRandom;  //overwatch weapons


// fills the box, DZMSProtectObj prevents it from disappearing
_crate = createVehicle ["RUVehicleBox",[(_coords select 0) + 2.6778,(_coords select 1) - 3.0889,0],[], 0, "CAN_COLLIDE"];
clearWeaponCargoGlobal _crate;
clearMagazineCargoGlobal _crate;
[_crate] call WeaponBox;
[_crate] call DZMSProtectObj;
_crate setDir -28.85478;

_crate2 = createVehicle ["RUVehicleBox",[(_coords2 select 0) + 1.4805,(_coords2 select 1) - 3.7432,0],[], 0, "CAN_COLLIDE"];
clearWeaponCargoGlobal _crate2;
clearMagazineCargoGlobal _crate2;
[_crate2] call BuildBox;
[_crate2] call DZMSProtectObj;
_crate2 setDir 62.744293;;
