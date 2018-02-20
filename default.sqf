if(isServer) then {


	//Custom Spawns file//
	/*
	Custom group spawns Eg.
	[
		[953.237,4486.48,0.001],			// Position
		4,									// Number Of units
		"Random",							// Skill level of unit (easy, medium, hard, extreme, Random)
		"Random",							// Primary gun set number or gun and rocket launcher. Syntax is "Random", for gun only or ["Random","AT"], for gun and launcher
		4,									// Number of magazines
		"Random",							// Backpack classname, use "Random" or classname here
		"Random",							// Skin classname, use "Random" or classname here
		"Random",							// Gearset number. "Random" for random gear set
		"Bandit"							// AI Type, "Hero" or "Bandit".
	] call spawn_group;
	Place your custom group spawns below
	*/





	/*
	Custom static weapon spawns Eg. (with mutiple positions)
	[
		[									// Position(s) (can be multiple)
			[911.21,4532.76,2.62],
			[921.21,4542.76,2.62]
		],
		"M2StaticMG",						// Classname of turret
		"easy",								// Skill level of unit (easy, medium, hard, extreme, Random)
		"Bandit2_DZ",						// Skin classname, use "Random" or classname here
		"Bandit",							// AI Type, "Hero" or "Bandit".
		"Random",							// Primary gun set number. "Random" for random weapon set
		2,									// Number of magazines
		"Random",							// Backpack classname, use "Random" or classname here
		"Random"							// Gearset classname, use "Random" or classname here
	] call spawn_static;
	Place your custom static weapon spawns below
	*/

//AI Skilisty Island M2'S AND Igla 
[[[13757, 2855.6951, 0.0001411438],[13581.159, 3095.7595, -0.00020980835],[13672.707, 2923.532, -1.5258789e-005],[13757.219, 2913.2258, 0.00010681152],[13803.734, 2948.77, 9.9182129e-005]],"M2StaticMG","extreme","Bandit2_DZ","Bandit","Random",2,"Random","Random"] call spawn_static;
[[[13307.787, 2742.4548, 5.7220459e-005],[13473.531, 3343.7896, -2.2888184e-005],[13308.451, 3241.7668, 2.6702881e-005],[13631.521, 3237.97, 0.00017929077],[14165.316, 2696.0239, 8.2969666e-005]],"M2StaticMG","extreme","Bandit2_DZ","Bandit","Random",2,"Random","Random"] call spawn_static;
[[[13720.18, 2841.2844, -4.196167e-005],[14085.578, 2942.03, 0.00035858154],[13598.758, 2932.2224, -0.0002784729],[12980.869, 3208.0649, 4.5776367e-005],[13526.065, 3475.8076, 1.0967255e-005]],"M2StaticMG","extreme","Bandit2_DZ","Bandit","Random",2,"Random","Random"] call spawn_static; 
[[[13771.2, 2969.66, 0.0014648], [13689.4, 2980.61, 0.00135422], [13731.9, 2897.92, 8.3882]],"M2StaticMG","extreme","Bandit2_DZ","Bandit","Random",2,"Random","Random"] call spawn_static;   
[[[13694.1, 2901.4, 7.9924]],"Igla_AA_pod_TK_EP1","hard","Bandit2_DZ","Bandit","Random",2,"Random","Random"] call spawn_static; /*GROUND TO AIR ROCKET*/

	/*
	Custom Chopper Patrol spawn Eg.
	[
		[725.391,4526.06,0],				// Position to patrol
		[0,0,0],							// Position to spawn chopper at
		2000,								// Radius of patrol
		10,									// Number of waypoints to give
		"UH1H_DZ",							// Classname of vehicle (make sure it has driver and two gunners)
		"Random",							// Skill level of units (easy, medium, hard, extreme, Random)
		"Random",							// Skin classname, use "Random" or classname here
		"Bandit"							// AI Type, "Hero" or "Bandit".
	] spawn heli_patrol;
	Place your heli patrols below
	*/





	/* 
	Custom Vehicle patrol spawns Eg. (Watch out they are stupid)
	[
		[725.391,4526.06,0],				// Position to patrol
		[725.391,4526.06,0],				// Position to spawn at
		200,								// Radius of patrol
		10,									// Number of waypoints to give
		"HMMWV_Armored",					// Classname of vehicle (make sure it has driver and gunner)
		"Random",							// Skill level of units (easy, medium, hard, extreme, Random)
		"Random",							// Skin classname, use "Random" or classname here
		"Bandit"							// AI Type, "Hero" or "Bandit".
	] spawn vehicle_patrol;
	Place your vehicle patrols below this line
	*/





	/*
	Paradropped unit custom spawn Eg.
	[
		[911.21545,4532.7612,2.6292224],	// Position that units will be dropped by
		[0,0,0],							// Starting position of the heli
		400,								// Radius from drop position a player has to be to spawn chopper
		"UH1H_DZ",							// Classname of chopper (Make sure it has 2 gunner seats!)
		5,									// Number of units to be para dropped
		"Random",							// Skill level of units (easy, medium, hard, extreme, Random)
		"Random",	or ["Random","at"],		// Primary gun set number and rocket launcher. "Random" for random weapon set, "at" for anti-tank, "aa" for anti-air launcher
		4,									// Number of magazines
		"Random",							// Backpack classname, use "Random" or classname here
		"Bandit2_DZ",						// Skin classname, use "Random" or classname here
		"Random",							// Gearset number. "Random" for random gear set.
		"Bandit",							// AI Type, "Hero" or "Bandit".
		true								// true: Aircraft will stay at position and fight. false: Heli will leave if not under fire. 
	] spawn heli_para;
	Place your paradrop spawns under this line
	*/

	diag_log "WAI: Static mission loaded";
};