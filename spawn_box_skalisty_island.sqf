/*this is the command line []execVM "\z\addons\dayz_server\addons\spawn_box_skalisty_island.sqf";//random box on Skalisty Island
put it in dayz_server\init\server_functions.sqf
at the bottom of the file
*/

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
_wpns = ["AKS_74_UN_kobra","AK_107_pso","AK_107_GL_pso","AK_107_GL_kobra","M4A3_CCO_EP1","M4A1_AIM_SD_camo","M16A4_ACG","M8_carbineGL","VSS_vintorez","M8_sharpshooter","M40A3","Mk_48_DZ","M240_DZ","M249_DZ","Pecheneg_DZ","RPK_74","BAF_LRR_scoped","DMR","SVD_CAMO","SCAR_H_LNG_Sniper_SD","M110_NVG_EP1","Sa58V_RCO_EP1","KSVK_DZE","BAF_L86A2_ACOG","M14_EP1","Sa58V_CCO_EP1",
		"AK_47_M","AK_74","AKS_74_kobra","AKS_74_U","BAF_L85A2_RIS_Holo","bizon_silenced","FN_FAL_ANPVS4","FN_FAL","G36A_camo","G36C_camo","G36C","G36K_camo","M1014","M16A2","M16A2GL","M4A1_AIM_SD_camo","M4A1_Aim","M4A1_HWS_GL_camo","M4A1","M4A3_CCO_EP1","Remington870_lamp","Sa58P_EP1","Sa58V_CCO_EP1","Sa58V_EP1","Sa58V_RCO_EP1",
		"RH_acrgl","RH_acrglacog","RH_acrglaim","RH_acrgleotech","RH_anac","RH_anacg","RH_browninghp","RH_bull","RH_ctar21","RH_ctar21glacog","RH_ctar21m","RH_ctar21mgl","RH_hk416","RH_hk416acog","RH_hk416aim","RH_hk416eotech","RH_hk416gl","RH_hk416glacog","RH_hk416glaim","RH_hk416gleotech","RH_hk416s","RH_hk416sacog","RH_hk416saim","RH_hk416sd","RH_hk416sdaim",
		"RH_hk416sdeotech","RH_hk416sdgl","RH_hk416sdglaim","RH_hk416sdgleotech","RH_hk416seotech","RH_hk416sgl","RH_hk416sglacog","RH_hk416sglaim","RH_hk416sgleotech","RH_hk417","RH_hk417acog","RH_hk417aim","RH_hk417eotech","RH_hk417s","RH_hk417sacog","RH_hk417saim","RH_hk417sd","RH_hk417sdacog","RH_hk417sdaim","RH_hk417sdeotech","RH_hk417sdsp","RH_hk417seotech",
		"RH_hk417sgl","RH_hk417sglacog","RH_hk417sglaim","RH_hk417sgleotech","RH_hk417sp","RH_m14","RH_m14acog","RH_m14aim","RH_m14eot","RH_m1s","RH_m1sacog","RH_m1saim","RH_m1seot","RH_m1sshd","RH_m1ssp","RH_m1st","RH_m1stacog","RH_m1staim","RH_m1steot","RH_m1stshd","RH_m1stsp","RH_m21","RH_mas","RH_masacog","RH_masaim","RH_masb","RH_masbacog","RH_masbaim",
		"RH_masbeotech","RH_masbsd","RH_masbsdacog","RH_masbsdaim","RH_masbsdeotech","RH_maseotech","RH_massd","RH_massdacog","RH_massdaim","RH_massdeotech","RH_mk2","RH_mk22","RH_mk22sd","RH_mk22v","RH_mk22vsd","RH_muzi","RH_p226","RH_p226s","RH_p38","RH_ppk","RH_python","RH_sc2","RH_sc2acog","RH_sc2aim","RH_sc2eot","RH_sc2shd","RH_sc2sp","RH_star21","RH_tec9",
		"RH_tt33","RH_vz61","skavil_M60","skavil_M60e3","vilas_rpg22","vilas_rpg26","vil_9a91","vil_9a91_c","vil_9a91_csd","vil_Abakan","vil_Abakan_gp","vil_Abakan_P29","vil_AEK1","vil_AEK2","vil_AeK_23","vil_AeK_3","vil_AeK_3_K","vil_AEK_GL","vil_AG3","vil_AG36","vil_AG36A2","vil_AG36KA4","vil_AG36KV","vil_AG3EOT","vil_ak12","vil_ak12_ap","vil_ak12_gp","vil_AK47_BASE",
		"vil_AKM","vil_AKMS","vil_AKMSB","vil_AKMS_GP25","vil_AKM_BASE","vil_AKM_GL","vil_AKS_47","vil_AKS_74","vil_AKS_74p","vil_AKS_74p_45","vil_AKS_74p_gp","vil_AKS_74_gp","vil_AKs_74_u","vil_AKs_74_u45","Vil_AKS_74_UB","Vil_AKS_74_UN_kobra","vil_AKS_BASE","vil_AK_101","vil_AK_103","vil_AK_105","Vil_AK_105_c","vil_AK_107","Vil_AK_107_c","vil_AK_47","vil_AK_47_49",
		"vil_AK_47_m1","vil_AK_74","vil_AK_74m","vil_AK_74m_c","vil_AK_74m_EOT","vil_AK_74m_EOT_Alfa","vil_AK_74m_EOT_FSB","vil_AK_74m_EOT_FSB_45","vil_AK_74m_EOT_FSB_60","vil_AK_74m_gp","vil_AK_74m_gp_29","vil_AK_74m_k","vil_AK_74M_N","vil_AK_74m_p29","vil_AK_74M_PSO","vil_AK_74P","vil_AK_74_gp","vil_AK_74_N","vil_AK_nato_m1","vil_AK_nato_m80","vil_AMD",
		"vil_AMD63","vil_APS","vil_apssd","vil_ASH82","vil_B_HP","vil_CG84T","vil_DRM_BASE","vil_Fal","vil_Fal_Para","vil_FnMag","vil_G36a2","vil_G36CC","vil_G36E","vil_G36KA4","vil_G36KES","vil_G36KSK","vil_G36KSKdes","vil_G36KSKdesES","vil_G36KSKES","vil_G36KV3","vil_G36KV3Des","vil_G36KVA4","vil_G36KVZ","vil_G36VA4","vil_G36VA4Eot","vil_G3a2","vil_G3a3",
		"vil_G3a4","vil_G3a4b","vil_G3an","vil_G3anb","vil_G3SG1","vil_G3sg1b","vil_G3TGS","vil_G3TGSb","vil_G3ZF","vil_G3zfb","vil_Galil","vil_Galil_arm","vil_Groza_GL","vil_Groza_HG","vil_Groza_SC","vil_Groza_SD","vil_HK33","vil_HK416_Aim","VIL_HK416_EDR","vil_HK416_EOT","vil_HK416_GL","vil_HK416_IS","vil_HK417s","vil_Insas","vil_Insas_lmg","vil_M110",
		"vil_M110sd","vil_M14","vil_M14G","vil_M16A1","vil_M21","vil_M21G","vil_M240_B","vil_M249_Para","vil_M24b","VIL_M4","vil_m40a3","VIL_M4_aim","vil_M4_EOT","vil_M64","vil_M70","vil_M70B","vil_M76","vil_M91","vil_Mg3","vil_MG4","vil_MG4E","vil_Minimi","vil_MP5SD_EOTech","vil_MP5_EOTech","vil_MPi","vil_NATO_AK","vil_Panzerfaust3","vil_PK","vil_PKM",
		"vil_PKM_N","vil_PKP","vil_PKP_EOT","vil_PMI","vil_PMI74S","vil_PMIS","vil_PSL1","Vil_PYA","vil_Rak74sgl","vil_RPD","Vil_RPG16","Vil_RPG29","Vil_RPG7d_PGO","Vil_RPG7V_PGO","vil_RPK","vil_RPK74","vil_RPK74M","vil_RPK74M_N","vil_RPK74M_P29","vil_RPK75","vil_RPK75_M72","vil_RPK75_Romania","Vil_RPO_A","vil_sg540","vil_sg542","vil_sg542f","vil_SKS","vil_SR25",
		"vil_SR25SD","vil_SVDK","vil_SVD_63","vil_SVD_BASE","vil_SVD_M","vil_SVD_N","vil_SVD_P21","vil_SVD_S","vil_SVU","vil_SVU_A","vil_SV_98","vil_SV_98_69","vil_SV_98_SD","vil_Tt33","vil_type88_1","vil_VAL","vil_VAL_C","vil_VAL_N","vil_Vikhr","vil_vsk94","vil_VSS_N","vil_VSS_PSO","vil_zastava_m84"];

_pstl = ["Colt1911","glock17_EP1","M9","M9SD","Makarov","MakarovSD","revolver_EP1","UZI_EP1",
		"RH_deagle","RH_Deagleg","RH_Deaglem","RH_Deaglemz","RH_Deaglemzb","RH_Deagles","RH_g17","RH_g17sd","RH_g18",
		"RH_g19","RH_g19t","RH_m1911","RH_m1911old","RH_m1911sd","RH_m9","RH_m93r","RH_m9c","RH_m9csd","RH_m9sd","RH_usp",
		"RH_uspm","RH_uspsd","vil_Glock","vil_Glock_o","vil_USP","vil_USP45","vil_USP45SD","vil_USPSD","vil_uzi","vil_uzimini","vil_uzimini_SD","vil_uzi_c","vil_uzi_SD"];

_bld = ["CinderBlocks","MortarBucket","ItemTankTrap","ItemPole","PartGeneric","PartPlywoodPack","PartPlankPack","ItemTentOld","ItemTentDomed","ItemTentDomed2","ItemSandbag",
"ItemWire","workbench_kit","ItemGenerator","forest_net_kit","ItemWoodStairs","ItemWoodStairsSupport","ItemWoodLadder","ItemWoodWall","ItemWoodWallThird","ItemWoodWallDoor",
"ItemWoodWallWithDoor","ItemWoodWallGarageDoor","light_pole_kit","metal_panel_kit","wood_ramp_kit","bulk_ItemSandbag","bulk_ItemTankTrap","bulk_ItemTankTrapHalf","bulk_PartGeneric",
"deer_stand_kit","fuel_pump_kit","sandbag_nest_kit","storage_shed_kit","ItemFuelPump","ItemScaffoldingKit"];

_bld_rare = ["metal_floor_kit","30m_plot_kit","cinder_door_kit","cinder_garage_kit","cinder_wall_kit","ItemRuby",
"ItemPlotDeed","ItemORP","ItemAVE","ItemLRK","ItemTNK","ItemVault"];

_tools = ["ItemToolbox","ItemCrowbar","ItemKnife","ItemEtool","ItemHatchet_DZE","ItemMatchbox_DZE","Binocular_Vector","ItemCompass","ItemFishingPole","ItemFlashlightRed","ItemGPS","NVGoggles"];

// Define lists. Some lists are defined in DZMSWeaponCrateList.sqf in the ExtConfig.

_bpackList = ["DZ_LargeGunBag_EP1","DZ_British_ACU","DZ_CivilBackpack_EP1","DZ_Backpack_EP1"];

_gshellList = ["HandGrenade_west","FlareGreen_M203","FlareWhite_M203","1Rnd_HE_M203","FlareRed_M203","FlareYellow_M203","Skin_GUE_Soldier_MG_DZ","Skin_GUE_Soldier_Sniper_DZ","Skin_GUE_Soldier_Crew_DZ",
"Skin_GUE_Soldier_CO_DZ","Skin_GUE_Soldier_2_DZ","Skin_TK_INS_Warlord_EP1_DZ","Skin_CZ_Special_Forces_GL_DES_EP1_DZ","6Rnd_HE_M203","6Rnd_FlareWhite_M203","6Rnd_FlareGreen_M203","6Rnd_SmokeRed_M203"];

_medical = ["ItemBandage","ItemMorphine","ItemEpinephrine","ItemPainkiller","FoodMRE","ItemAntibiotic","ItemBloodbag","ItemSodaRabbit"];

_money = ["ItemCitrine","ItemGoldBar10oz","ItemBriefcase100oz"];


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

_wpns = ["AKS_74_UN_kobra","AK_107_pso","AK_107_GL_pso","AK_107_GL_kobra","M4A3_CCO_EP1","M4A1_AIM_SD_camo","M16A4_ACG","M8_carbineGL","VSS_vintorez","M8_sharpshooter","M40A3","Mk_48_DZ","M240_DZ","M249_DZ","Pecheneg_DZ","RPK_74","BAF_LRR_scoped","DMR","SVD_CAMO","SCAR_H_LNG_Sniper_SD","M110_NVG_EP1","Sa58V_RCO_EP1","KSVK_DZE","BAF_L86A2_ACOG","M14_EP1","Sa58V_CCO_EP1",
		"AK_47_M","AK_74","AKS_74_kobra","AKS_74_U","BAF_L85A2_RIS_Holo","bizon_silenced","FN_FAL_ANPVS4","FN_FAL","G36A_camo","G36C_camo","G36C","G36K_camo","M1014","M16A2","M16A2GL","M4A1_AIM_SD_camo","M4A1_Aim","M4A1_HWS_GL_camo","M4A1","M4A3_CCO_EP1","Remington870_lamp","Sa58P_EP1","Sa58V_CCO_EP1","Sa58V_EP1","Sa58V_RCO_EP1",
		"RH_acrgl","RH_acrglacog","RH_acrglaim","RH_acrgleotech","RH_anac","RH_anacg","RH_browninghp","RH_bull","RH_ctar21","RH_ctar21glacog","RH_ctar21m","RH_ctar21mgl","RH_hk416","RH_hk416acog","RH_hk416aim","RH_hk416eotech","RH_hk416gl","RH_hk416glacog","RH_hk416glaim","RH_hk416gleotech","RH_hk416s","RH_hk416sacog","RH_hk416saim","RH_hk416sd","RH_hk416sdaim",
		"RH_hk416sdeotech","RH_hk416sdgl","RH_hk416sdglaim","RH_hk416sdgleotech","RH_hk416seotech","RH_hk416sgl","RH_hk416sglacog","RH_hk416sglaim","RH_hk416sgleotech","RH_hk417","RH_hk417acog","RH_hk417aim","RH_hk417eotech","RH_hk417s","RH_hk417sacog","RH_hk417saim","RH_hk417sd","RH_hk417sdacog","RH_hk417sdaim","RH_hk417sdeotech","RH_hk417sdsp","RH_hk417seotech",
		"RH_hk417sgl","RH_hk417sglacog","RH_hk417sglaim","RH_hk417sgleotech","RH_hk417sp","RH_m14","RH_m14acog","RH_m14aim","RH_m14eot","RH_m1s","RH_m1sacog","RH_m1saim","RH_m1seot","RH_m1sshd","RH_m1ssp","RH_m1st","RH_m1stacog","RH_m1staim","RH_m1steot","RH_m1stshd","RH_m1stsp","RH_m21","RH_mas","RH_masacog","RH_masaim","RH_masb","RH_masbacog","RH_masbaim",
		"RH_masbeotech","RH_masbsd","RH_masbsdacog","RH_masbsdaim","RH_masbsdeotech","RH_maseotech","RH_massd","RH_massdacog","RH_massdaim","RH_massdeotech","RH_mk2","RH_mk22","RH_mk22sd","RH_mk22v","RH_mk22vsd","RH_muzi","RH_p226","RH_p226s","RH_p38","RH_ppk","RH_python","RH_sc2","RH_sc2acog","RH_sc2aim","RH_sc2eot","RH_sc2shd","RH_sc2sp","RH_star21","RH_tec9",
		"RH_tt33","RH_vz61","skavil_M60","skavil_M60e3","vilas_rpg22","vilas_rpg26","vil_9a91","vil_9a91_c","vil_9a91_csd","vil_Abakan","vil_Abakan_gp","vil_Abakan_P29","vil_AEK1","vil_AEK2","vil_AeK_23","vil_AeK_3","vil_AeK_3_K","vil_AEK_GL","vil_AG3","vil_AG36","vil_AG36A2","vil_AG36KA4","vil_AG36KV","vil_AG3EOT","vil_ak12","vil_ak12_ap","vil_ak12_gp","vil_AK47_BASE",
		"vil_AKM","vil_AKMS","vil_AKMSB","vil_AKMS_GP25","vil_AKM_BASE","vil_AKM_GL","vil_AKS_47","vil_AKS_74","vil_AKS_74p","vil_AKS_74p_45","vil_AKS_74p_gp","vil_AKS_74_gp","vil_AKs_74_u","vil_AKs_74_u45","Vil_AKS_74_UB","Vil_AKS_74_UN_kobra","vil_AKS_BASE","vil_AK_101","vil_AK_103","vil_AK_105","Vil_AK_105_c","vil_AK_107","Vil_AK_107_c","vil_AK_47","vil_AK_47_49",
		"vil_AK_47_m1","vil_AK_74","vil_AK_74m","vil_AK_74m_c","vil_AK_74m_EOT","vil_AK_74m_EOT_Alfa","vil_AK_74m_EOT_FSB","vil_AK_74m_EOT_FSB_45","vil_AK_74m_EOT_FSB_60","vil_AK_74m_gp","vil_AK_74m_gp_29","vil_AK_74m_k","vil_AK_74M_N","vil_AK_74m_p29","vil_AK_74M_PSO","vil_AK_74P","vil_AK_74_gp","vil_AK_74_N","vil_AK_nato_m1","vil_AK_nato_m80","vil_AMD",
		"vil_AMD63","vil_APS","vil_apssd","vil_ASH82","vil_B_HP","vil_CG84T","vil_DRM_BASE","vil_Fal","vil_Fal_Para","vil_FnMag","vil_G36a2","vil_G36CC","vil_G36E","vil_G36KA4","vil_G36KES","vil_G36KSK","vil_G36KSKdes","vil_G36KSKdesES","vil_G36KSKES","vil_G36KV3","vil_G36KV3Des","vil_G36KVA4","vil_G36KVZ","vil_G36VA4","vil_G36VA4Eot","vil_G3a2","vil_G3a3",
		"vil_G3a4","vil_G3a4b","vil_G3an","vil_G3anb","vil_G3SG1","vil_G3sg1b","vil_G3TGS","vil_G3TGSb","vil_G3ZF","vil_G3zfb","vil_Galil","vil_Galil_arm","vil_Groza_GL","vil_Groza_HG","vil_Groza_SC","vil_Groza_SD","vil_HK33","vil_HK416_Aim","VIL_HK416_EDR","vil_HK416_EOT","vil_HK416_GL","vil_HK416_IS","vil_HK417s","vil_Insas","vil_Insas_lmg","vil_M110",
		"vil_M110sd","vil_M14","vil_M14G","vil_M16A1","vil_M21","vil_M21G","vil_M240_B","vil_M249_Para","vil_M24b","VIL_M4","vil_m40a3","VIL_M4_aim","vil_M4_EOT","vil_M64","vil_M70","vil_M70B","vil_M76","vil_M91","vil_Mg3","vil_MG4","vil_MG4E","vil_Minimi","vil_MP5SD_EOTech","vil_MP5_EOTech","vil_MPi","vil_NATO_AK","vil_Panzerfaust3","vil_PK","vil_PKM",
		"vil_PKM_N","vil_PKP","vil_PKP_EOT","vil_PMI","vil_PMI74S","vil_PMIS","vil_PSL1","Vil_PYA","vil_Rak74sgl","vil_RPD","Vil_RPG16","Vil_RPG29","Vil_RPG7d_PGO","Vil_RPG7V_PGO","vil_RPK","vil_RPK74","vil_RPK74M","vil_RPK74M_N","vil_RPK74M_P29","vil_RPK75","vil_RPK75_M72","vil_RPK75_Romania","Vil_RPO_A","vil_sg540","vil_sg542","vil_sg542f","vil_SKS","vil_SR25",
		"vil_SR25SD","vil_SVDK","vil_SVD_63","vil_SVD_BASE","vil_SVD_M","vil_SVD_N","vil_SVD_P21","vil_SVD_S","vil_SVU","vil_SVU_A","vil_SV_98","vil_SV_98_69","vil_SV_98_SD","vil_Tt33","vil_type88_1","vil_VAL","vil_VAL_C","vil_VAL_N","vil_Vikhr","vil_vsk94","vil_VSS_N","vil_VSS_PSO","vil_zastava_m84"];

_pstl = ["Colt1911","glock17_EP1","M9","M9SD","Makarov","MakarovSD","revolver_EP1","UZI_EP1",
		"RH_deagle","RH_Deagleg","RH_Deaglem","RH_Deaglemz","RH_Deaglemzb","RH_Deagles","RH_g17","RH_g17sd","RH_g18",
		"RH_g19","RH_g19t","RH_m1911","RH_m1911old","RH_m1911sd","RH_m9","RH_m93r","RH_m9c","RH_m9csd","RH_m9sd","RH_usp",
		"RH_uspm","RH_uspsd","vil_Glock","vil_Glock_o","vil_USP","vil_USP45","vil_USP45SD","vil_USPSD","vil_uzi","vil_uzimini","vil_uzimini_SD","vil_uzi_c","vil_uzi_SD"];
		
_bld = ["CinderBlocks","MortarBucket","ItemTankTrap","ItemPole","PartGeneric","PartPlywoodPack","PartPlankPack","ItemTentOld","ItemTentDomed","ItemTentDomed2","ItemSandbag",
"ItemWire","workbench_kit","ItemGenerator","forest_net_kit","ItemWoodStairs","ItemWoodStairsSupport","ItemWoodLadder","ItemWoodWall","ItemWoodWallThird","ItemWoodWallDoor",
"ItemWoodWallWithDoor","ItemWoodWallGarageDoor","light_pole_kit","metal_panel_kit","wood_ramp_kit","bulk_ItemSandbag","bulk_ItemTankTrap","bulk_ItemTankTrapHalf","bulk_PartGeneric",
"deer_stand_kit","fuel_pump_kit","sandbag_nest_kit","storage_shed_kit","ItemFuelPump","ItemScaffoldingKit"];

_bld_rare = ["metal_floor_kit","30m_plot_kit","cinder_door_kit","cinder_garage_kit","cinder_wall_kit","ItemLockbox","ItemRuby","ItemPlotDeed","ItemORP","ItemAVE","ItemLRK","ItemTNK","ItemVault"];

_tools = ["ItemToolbox","ItemCrowbar","ItemKnife","ItemEtool","ItemHatchet_DZE","ItemMatchbox_DZE","Binocular_Vector","ItemCompass","ItemFishingPole","ItemFlashlightRed","ItemGPS","NVGoggles"];

// Define lists. Some lists are defined in DZMSWeaponCrateList.sqf in the ExtConfig.

_bpackList = ["DZ_LargeGunBag_EP1","DZ_British_ACU","DZ_CivilBackpack_EP1","DZ_Backpack_EP1"];

_gshellList = ["HandGrenade_west","FlareGreen_M203","FlareWhite_M203","1Rnd_HE_M203","FlareRed_M203","FlareYellow_M203",
"Skin_GUE_Soldier_MG_DZ","Skin_GUE_Soldier_Sniper_DZ","Skin_GUE_Soldier_Crew_DZ","Skin_GUE_Soldier_CO_DZ","Skin_GUE_Soldier_2_DZ",
"Skin_TK_INS_Warlord_EP1_DZ","Skin_CZ_Special_Forces_GL_DES_EP1_DZ","6Rnd_HE_M203","6Rnd_FlareWhite_M203","6Rnd_FlareGreen_M203","6Rnd_SmokeRed_M203"];

_medical = ["ItemBandage","ItemMorphine","ItemEpinephrine","ItemPainkiller","FoodMRE","ItemAntibiotic","ItemBloodbag","ItemSodaRabbit"];

_money = ["ItemCitrine","ItemGoldBar10oz","ItemBriefcase100oz"];


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
	


_coords =  [[14072.7, 2824.46, 0], [13602.9, 3141.8, 0], [13413.9, 2761.31, 0], [13696.2, 2991.8, 0], [13267.7, 3235.02, 0]] call BIS_fnc_selectRandom;
_coords2 = [[13788.6, 2950.67, 0], [13310.8, 2734.6, 0], [13920.5, 2918.4, 0], [14067.9, 2770.47, 0], [13456.6, 3327.34, 0]] call BIS_fnc_selectRandom;


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