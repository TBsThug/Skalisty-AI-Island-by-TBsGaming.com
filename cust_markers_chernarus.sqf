/*
	Custom Marker Requirements:
	
	Spawn markers: The area covered by the marker will be used as the patrol and spawning area.
	
		1. Marker shape must be Ellipse (Could be rectangular but the function will consider the marker as elliptical regardless)
		2. Marker should have identical x and y dimensions. If they are different, the smaller dimension will be used instead.
	
	Blacklist markers: If a player is within this area, they will not be selected as a target for dynamic AI spawns.
	
		1. Marker shape may be Ellipse or Rectangle
		2. Marker dimensions should cover the area to be blacklisted.
	
	Example Marker (Note: the marker name must be unique! In this example, it's named "dzaicustomspawntest"):
	
	_this = createMarker ["dzaicustomspawntest", [6650.9883, 9411.541, -6.1035156e-005]];
	_this setMarkerShape "ELLIPSE";
	_this setMarkerType "Empty";
	_this setMarkerBrush "Solid";
	_this setMarkerSize [50, 50];
	_this setMarkerAlpha 0;
	_dzaicustomspawntest = _this;		//_dzaicustomspawntest must be a unique name
	
	Note: This marker is used in the example found in the custom_spawns config files.
*/

//----------------------------Add your custom markers below this line ----------------------------

//AI Skalisty Island

    _this = createMarker ["Skalisty1", [13671.355, 2892.8167, -1.5258789e-005]]; _this setMarkerShape "ELLIPSE"; _this setMarkerType "Empty"; _this setMarkerBrush "Solid"; _this setMarkerSize [50, 10]; _this setMarkerAlpha 0; _Skalisty1 = _this;
    _this = createMarker ["Skalisty2", [13687.221, 2931.012, 2.6702881e-005]]; _this setMarkerShape "ELLIPSE"; _this setMarkerType "Empty"; _this setMarkerBrush "Solid"; _this setMarkerSize [75, 10];	_this setMarkerAlpha 0;	_Skalisty2 = _this;
    _this = createMarker ["Skalisty3", [13741.079, 2945.6494, -9.5367432e-005]]; _this setMarkerShape "ELLIPSE"; _this setMarkerType "Empty"; _this setMarkerBrush "Solid"; _this setMarkerSize [50, 10]; _this setMarkerAlpha 0; _Skalisty3 = _this;
    _this = createMarker ["Skalisty4", [13691.315, 2857.7407, -3.8146973e-005]]; _this setMarkerShape "ELLIPSE"; _this setMarkerType "Empty"; _this setMarkerBrush "Solid"; _this setMarkerSize [75, 10]; _this setMarkerAlpha 0; _Skalisty4 = _this;
    _this = createMarker ["Skalisty5", [13729.353, 2856.2568, 3.4332275e-005]]; _this setMarkerShape "ELLIPSE"; _this setMarkerType "Empty"; _this setMarkerBrush "Solid"; _this setMarkerSize [50, 10]; _this setMarkerAlpha 0; _Skalisty5 = _this;
    _this = createMarker ["Skalisty6", [13730.628, 2812.7852, -0.00022125244]]; _this setMarkerShape "ELLIPSE"; _this setMarkerType "Empty"; _this setMarkerBrush "Solid"; _this setMarkerSize [75, 10]; _this setMarkerAlpha 0; _Skalisty6 = _this;
    _this = createMarker ["Skalisty7", [13642.995, 2837.9001, 0.0001411438]]; _this setMarkerShape "ELLIPSE"; _this setMarkerType "Empty"; _this setMarkerBrush "Solid"; _this setMarkerSize [50, 10]; _this setMarkerAlpha 0; _Skalisty7 = _this;
    _this = createMarker ["Skalisty8", [13829.32, 2923.4414, 6.4849854e-005]]; _this setMarkerShape "ELLIPSE"; _this setMarkerType "Empty"; _this setMarkerBrush "Solid"; _this setMarkerSize [75, 10];	_this setMarkerAlpha 0;	_Skalisty8 = _this;
    _this = createMarker ["Skalisty9", [13895.181, 2988.3088, 0.00019454956]]; _this setMarkerShape "ELLIPSE"; _this setMarkerType "Empty"; _this setMarkerBrush "Solid"; _this setMarkerSize [50, 10];	_this setMarkerAlpha 0;	_Skalisty9 = _this;
    _this = createMarker ["Skalisty10", [13955.636, 3029.5244, 0.00057220459]]; _this setMarkerShape "ELLIPSE"; _this setMarkerType "Empty"; _this setMarkerBrush "Solid"; _this setMarkerSize [75, 10]; _this setMarkerAlpha 0; _Skalisty10 = _this;
    _this = createMarker ["Skalisty11", [14070.653, 2891.0085, -0.00090026855]]; _this setMarkerShape "ELLIPSE"; _this setMarkerType "Empty"; _this setMarkerBrush "Solid"; _this setMarkerSize [50, 10]; _this setMarkerAlpha 0; _Skalisty11 = _this;
    _this = createMarker ["Skalisty12", [14142.604, 2789.1985, 0.00060462952]]; _this setMarkerShape "ELLIPSE"; _this setMarkerType "Empty"; _this setMarkerBrush "Solid"; _this setMarkerSize [75, 10]; _this setMarkerAlpha 0; _Skalisty12 = _this;
    _this = createMarker ["Skalisty13", [14155.192, 2691.3687, 0.0002155304]]; _this setMarkerShape "ELLIPSE"; _this setMarkerType "Empty"; _this setMarkerBrush "Solid"; _this setMarkerSize [50, 10];	_this setMarkerAlpha 0;	_Skalisty13 = _this;
    _this = createMarker ["Skalisty14", [13990.835, 2788.1887, 0.00024223328]]; _this setMarkerShape "ELLIPSE"; _this setMarkerType "Empty"; _this setMarkerBrush "Solid"; _this setMarkerSize [75, 10]; _this setMarkerAlpha 0; _Skalisty14 = _this;
    _this = createMarker ["Skalisty15", [13870.401, 2810.1841, -1.9073486e-005]]; _this setMarkerShape "ELLIPSE"; _this setMarkerType "Empty"; _this setMarkerBrush "Solid"; _this setMarkerSize [50, 10]; _this setMarkerAlpha 0; _Skalisty15 = _this;
    _this = createMarker ["Skalisty16", [13563.453, 2869.0381, 3.0517578e-005]]; _this setMarkerShape "ELLIPSE"; _this setMarkerType "Empty"; _this setMarkerBrush "Solid"; _this setMarkerSize [75, 10]; _this setMarkerAlpha 0; _Skalisty16 = _this;
    _this = createMarker ["Skalisty17", [13510.406, 2995.7441, 0.0013637543]]; _this setMarkerShape "ELLIPSE"; _this setMarkerType "Empty"; _this setMarkerBrush "Solid"; _this setMarkerSize [50, 10];	_this setMarkerAlpha 0;	_Skalisty17 = _this;
    _this = createMarker ["Skalisty18", [13428.791, 2792.6438, 4.7683716e-006]]; _this setMarkerShape "ELLIPSE"; _this setMarkerType "Empty"; _this setMarkerBrush "Solid"; _this setMarkerSize [75, 10]; _this setMarkerAlpha 0; _Skalisty18 = _this;
    _this = createMarker ["Skalisty19", [13343.02, 2788.208, 0.0003452301]]; _this setMarkerShape "ELLIPSE"; _this setMarkerType "Empty"; _this setMarkerBrush "Solid"; _this setMarkerSize [50, 10]; _this setMarkerAlpha 0; _Skalisty19 = _this;
    _this = createMarker ["Skalisty20", [13279.515, 2737.9275, -4.4822693e-005]]; _this setMarkerShape "ELLIPSE"; _this setMarkerType "Empty"; _this setMarkerBrush "Solid"; _this setMarkerSize [75, 10]; _this setMarkerAlpha 0; _Skalisty20 = _this;
    _this = createMarker ["Skalisty21", [13353.722, 2719.4685, 0.00062465668]]; _this setMarkerShape "ELLIPSE"; _this setMarkerType "Empty"; _this setMarkerBrush "Solid"; _this setMarkerSize [50, 10]; _this setMarkerAlpha 0; _Skalisty21 = _this;
    _this = createMarker ["Skalisty22", [13419.333, 2747.3875, 0.00021457672]]; _this setMarkerShape "ELLIPSE"; _this setMarkerType "Empty"; _this setMarkerBrush "Solid"; _this setMarkerSize [75, 10]; _this setMarkerAlpha 0; _Skalisty22 = _this;
    _this = createMarker ["Skalisty23", [13382.635, 2774.623, 0.00018024445]]; _this setMarkerShape "ELLIPSE"; _this setMarkerType "Empty"; _this setMarkerBrush "Solid"; _this setMarkerSize [50, 10];	_this setMarkerAlpha 0;	_Skalisty23 = _this;
    _this = createMarker ["Skalisty24", [13571.933, 3323.9666, 0.00010681152]]; _this setMarkerShape "ELLIPSE"; _this setMarkerType "Empty"; _this setMarkerBrush "Solid"; _this setMarkerSize [75, 10]; _this setMarkerAlpha 0; _Skalisty24 = _this;
    _this = createMarker ["Skalisty25", [13485.479, 3338.3132, 9.1552734e-005]]; _this setMarkerShape "ELLIPSE"; _this setMarkerType "Empty"; _this setMarkerBrush "Solid"; _this setMarkerSize [50, 10]; _this setMarkerAlpha 0; _Skalisty25 = _this;
    _this = createMarker ["Skalisty26", [13487.625, 3380.8669, 0.00036621094]]; _this setMarkerShape "ELLIPSE"; _this setMarkerType "Empty"; _this setMarkerBrush "Solid"; _this setMarkerSize [50, 10]; _this setMarkerAlpha 0; _Skalisty26 = _this;
    _this = createMarker ["Skalisty27", [13408.095, 3336.6536, -0.00019073486]]; _this setMarkerShape "ELLIPSE"; _this setMarkerType "Empty"; _this setMarkerBrush "Solid"; _this setMarkerSize [75, 10]; _this setMarkerAlpha 0; _Skalisty27 = _this;
    _this = createMarker ["Skalisty28", [13377.609, 3288.2527, -0.0002784729]]; _this setMarkerShape "ELLIPSE"; _this setMarkerType "Empty"; _this setMarkerBrush "Solid"; _this setMarkerSize [50, 10]; _this setMarkerAlpha 0; _Skalisty28 = _this;
    _this = createMarker ["Skalisty29", [13245.426, 3362.8286, -0.00010251999]]; _this setMarkerShape "ELLIPSE"; _this setMarkerType "Empty"; _this setMarkerBrush "Solid"; _this setMarkerSize [75, 10]; _this setMarkerAlpha 0; _Skalisty29 = _this;
    _this = createMarker ["Skalisty30", [13214.415, 3246.9207, -0.0001335144]]; _this setMarkerShape "ELLIPSE"; _this setMarkerType "Empty"; _this setMarkerBrush "Solid"; _this setMarkerSize [50, 10]; _this setMarkerAlpha 0; _Skalisty30 = _this;
    _this = createMarker ["Skalisty31", [13140.325, 3271.8738, 0.00052642822]]; _this setMarkerShape "ELLIPSE"; _this setMarkerType "Empty"; _this setMarkerBrush "Solid"; _this setMarkerSize [75, 10]; _this setMarkerAlpha 0; _Skalisty31 = _this;
    _this = createMarker ["Skalisty32", [13064.684, 3258.4734, -5.7220459e-005]]; _this setMarkerShape "ELLIPSE"; _this setMarkerType "Empty"; _this setMarkerBrush "Solid"; _this setMarkerSize [50, 10]; _this setMarkerAlpha 0; _Skalisty32 = _this;
    _this = createMarker ["Skalisty33", [13112.573, 3197.2249, -0.00059127808]]; _this setMarkerShape "ELLIPSE"; _this setMarkerType "Empty"; _this setMarkerBrush "Solid"; _this setMarkerSize [75, 10]; _this setMarkerAlpha 0; _Skalisty33 = _this;
    _this = createMarker ["Skalisty34", [13033.765, 3154.4763, 0.00037384033]]; _this setMarkerShape "ELLIPSE"; _this setMarkerType "Empty"; _this setMarkerBrush "Solid"; _this setMarkerSize [50, 10]; _this setMarkerAlpha 0; _Skalisty34 = _this;
    _this = createMarker ["Skalisty35", [13109.765, 3132.3279, 0.00085258484]]; _this setMarkerShape "ELLIPSE"; _this setMarkerType "Empty"; _this setMarkerBrush "Solid"; _this setMarkerSize [75, 10]; _this setMarkerAlpha 0; _Skalisty35 = _this;
    _this = createMarker ["Skalisty36", [13372.726, 3103.7449, 0.00038146973]]; _this setMarkerShape "ELLIPSE"; _this setMarkerType "Empty"; _this setMarkerBrush "Solid"; _this setMarkerSize [50, 10]; _this setMarkerAlpha 0; _Skalisty36 = _this;
    _this = createMarker ["Skalisty37", [13467.485, 3107.6912, 9.6321106e-005]]; _this setMarkerShape "ELLIPSE"; _this setMarkerType "Empty"; _this setMarkerBrush "Solid"; _this setMarkerSize [75, 10]; _this setMarkerAlpha 0; _Skalisty37 = _this;
    _this = createMarker ["Skalisty38", [13472.39, 3004.0212, -0.00060558319]]; _this setMarkerShape "ELLIPSE"; _this setMarkerType "Empty"; _this setMarkerBrush "Solid"; _this setMarkerSize [50, 10]; _this setMarkerAlpha 0; _Skalisty38 = _this;
    _this = createMarker ["Skalisty39", [13476.838, 2875.9968, -7.8201294e-005]]; _this setMarkerShape "ELLIPSE"; _this setMarkerType "Empty"; _this setMarkerBrush "Solid"; _this setMarkerSize [75, 10]; _this setMarkerAlpha 0; _Skalisty39 = _this;
    _this = createMarker ["Skalisty40", [13409.714, 2819.4358, 0.00013065338]]; _this setMarkerShape "ELLIPSE"; _this setMarkerType "Empty"; _this setMarkerBrush "Solid"; _this setMarkerSize [50, 10]; _this setMarkerAlpha 0; _Skalisty40 = _this;
    _this = createMarker ["Skalisty41", [13991.87, 2889.8601, 8.9645386e-005]]; _this setMarkerShape "ELLIPSE"; _this setMarkerType "Empty"; _this setMarkerBrush "Solid"; _this setMarkerSize [75, 10]; _this setMarkerAlpha 0; _Skalisty41 = _this;
    _this = createMarker ["Skalisty42", [13576.669, 3073.3196, -0.00047302246]]; _this setMarkerShape "ELLIPSE"; _this setMarkerType "Empty"; _this setMarkerBrush "Solid"; _this setMarkerSize [50, 10]; _this setMarkerAlpha 0; _Skalisty42 = _this;
    _this = createMarker ["Skalisty43", [13490.565, 3235.3242, 0.00017547607]]; _this setMarkerShape "ELLIPSE"; _this setMarkerType "Empty"; _this setMarkerBrush "Solid"; _this setMarkerSize [75, 10]; _this setMarkerAlpha 0; _Skalisty43 = _this;
    _this = createMarker ["Skalisty44", [13703.9, 2930.38,0]]; _this setMarkerShape "ELLIPSE"; _this setMarkerType "Empty"; _this setMarkerBrush "Solid"; _this setMarkerSize [75, 10]; _this setMarkerAlpha 0; _Skalisty44 = _this;
    _this = createMarker ["Skalisty45", [13669.9,3095.39,0]]; _this setMarkerShape "ELLIPSE"; _this setMarkerType "Empty"; _this setMarkerBrush "Solid"; _this setMarkerSize [75, 10]; _this setMarkerAlpha 0; _Skalisty45 = _this;
    _this = createMarker ["Skalisty46", [13596.7,3148.73,0]]; _this setMarkerShape "ELLIPSE"; _this setMarkerType "Empty"; _this setMarkerBrush "Solid"; _this setMarkerSize [50, 10]; _this setMarkerAlpha 0; _Skalisty46 = _this;
    _this = createMarker ["Skalisty47", [13619.3,3250.7,0]]; _this setMarkerShape "ELLIPSE"; _this setMarkerType "Empty"; _this setMarkerBrush "Solid"; _this setMarkerSize [75, 10]; _this setMarkerAlpha 0; _Skalisty47 = _this;
    _this = createMarker ["Skalisty48", [13760.1,2910.76,0]]; _this setMarkerShape "ELLIPSE"; _this setMarkerType "Empty"; _this setMarkerBrush "Solid"; _this setMarkerSize [75, 10]; _this setMarkerAlpha 0; _Skalisty48 = _this;	
