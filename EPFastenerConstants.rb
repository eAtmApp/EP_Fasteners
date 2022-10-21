# Copyright 2015 Eye Physics and Jay Watson
#
# Create Bolts, Screws, Washers, Tapped holes, drilled holes and nuts 
# in standard sizes as components, that should print as workable parts.
#
# 2.01.2015  Jay Watson, Eye Physics
#-----------------------------------------------------------------------------

module EP
module EPFasteners
#=============================================================================
class EPFastenerConstants
#=============================================================================

        #Standard number of segments per loop.  MUST BE A MULTIPLE OF 6!
        #
        @@NumberOfArcSegments = 18.0

        # 标准垫圈
        # 螺栓尺寸、孔尺寸、外部、厚度
        @@WASHER = []
        @@WASHER << ["\#0",	"1/16\"",	"11/64\"",	"0.0250\""]
        @@WASHER << ["\#1",	"5/64\"",	"13/64\"",	"0.0250\""]
        @@WASHER << ["\#2",	"3/32\"",	"7/32\"",	"0.0300\""]
        @@WASHER << ["\#3",	"7/64\"",	"1/4\"",	"0.0300\""]
        @@WASHER << ["\#4",	"1/8\"",	"5/16\"",	"0.0400\""]
        @@WASHER << ["\#5",	"9/64\"",	"9/32\"",	"0.0400\""]
        @@WASHER << ["\#6",	"5/32\"",	"3/8\"",	"0.0700\""]
        @@WASHER << ["\#8",	"3/16\"",	"7/16\"",	"0.0700\""]
        @@WASHER << ["\#10",	"7/32\"",	"1/2\"",	"0.0700\""]
        @@WASHER << ["\#12",	"1/4\"",	"9/16\"",	"0.0800\""]
        @@WASHER << ["1/4",	"9/32\"",	"5/8\"",	"0.0800\""]
        @@WASHER << ["5/16",	"11/32\"",	"11/16\"",	"0.0800\""]
        @@WASHER << ["3/8",	"13/32\"",	"13/16\"",	"0.0800\""]
        @@WASHER << ["7/16",	"15/32\"",	"59/64\"",	"0.0800\""]
        @@WASHER << ["1/2",	"17/32\"",	"17/16\"",	"0.1300\""]
        @@WASHER << ["9/16",	"19/32\"",	"37/32\"",	"0.1300\""]
        @@WASHER << ["5/8",	"21/32\"",	"21/16\"",	"0.1300\""]
        @@WASHER << ["3/4",	"13/16\"",	"47/32\"",	"0.1600\""]
        @@WASHER << ["7/8",	"15/16\"",	"7/4\"",	"0.1600\""]
        @@WASHER << ["1.0"  ,	"17/16\"",	"2\"",		"0.1600\""]
	@@WASHER << ["M1",	"1.100mm",	"3.000mm",	"0.300mm"]
	@@WASHER << ["M1.2",	"1.300mm",	"3.500mm",	"0.300mm"]
	@@WASHER << ["M1.4",	"1.500mm",	"4.000mm",	"0.300mm"]
	@@WASHER << ["M1.6",	"1.700mm",	"4.000mm",	"0.300mm"]
	@@WASHER << ["M1.8",	"2.000mm",	"4.500mm",	"0.300mm"]
	@@WASHER << ["M2",	"2.200mm",	"5.000mm",	"0.300mm"]
	@@WASHER << ["M2.5",	"2.700mm",	"6.000mm",	"0.500mm"]
	@@WASHER << ["M3",	"3.200mm",	"7.000mm",	"0.500mm"]
	@@WASHER << ["M3.5",	"3.700mm",	"8.000mm",	"0.500mm"]
	@@WASHER << ["M4",	"4.300mm",	"9.000mm",	"0.800mm"]
	@@WASHER << ["M5",	"5.300mm",	"10.000mm",	"1.000mm"]
	@@WASHER << ["M6",	"6.400mm",	"12.000mm",	"1.600mm"]
	@@WASHER << ["M7",	"7.400mm",	"14.000mm",	"1.600mm"]
	@@WASHER << ["M8",	"8.400mm",	"16.000mm",	"1.600mm"]
	@@WASHER << ["M10",	"10.500mm",	"20.000mm",	"2.000mm"]
	@@WASHER << ["M12",	"13.000mm",	"24.000mm",	"2.500mm"]
	@@WASHER << ["M14",	"15.000mm",	"28.000mm",	"2.500mm"]
	@@WASHER << ["M16",	"17.000mm",	"30.000mm",	"3.000mm"]
	@@WASHER << ["M18",	"19.000mm",	"34.000mm",	"3.000mm"]
	@@WASHER << ["M20",	"21.000mm",	"37.000mm",	"3.000mm"]
	@@WASHER << ["M22",	"23.000mm",	"39.000mm",	"3.000mm"]
	@@WASHER << ["M24",	"25.000mm",	"44.000mm",	"4.000mm"]
	@@WASHER << ["M27",	"28.000mm",	"50.000mm",	"4.000mm"]
	@@WASHER << ["M30",	"31.000mm",	"56.000mm",	"4.000mm"]



        # UTS螺纹标准
        # 尺寸, 螺纹类型, 螺纹距, Dmaj
        @@UTS = []
        @@UTS << ["\#0",	"Coarse",	"0.0125\"",	"0.0600\""]
        @@UTS << ["\#0",	"Extra Fine",	"0.0125\"",	"0.0600\""]
        @@UTS << ["\#0",	"Fine",		"0.0125\"",	"0.0600\""]
        @@UTS << ["\#1",	"Coarse",	"0.015625\"",	"0.0730\""]
        @@UTS << ["\#1",	"Extra Fine",	"0.013888\"",	"0.0730\""]
        @@UTS << ["\#1",	"Fine",		"0.013888\"",	"0.0730\""]
        @@UTS << ["\#2",	"Coarse",	"0.017857\"",	"0.0860\""]
        @@UTS << ["\#2",	"Extra Fine",	"0.015625\"",	"0.0860\""]
        @@UTS << ["\#2",	"Fine",		"0.015625\"",	"0.0860\""]
        @@UTS << ["\#3",	"Coarse",	"0.020833\"",	"0.0990\""]
        @@UTS << ["\#3",	"Extra Fine",	"0.017857\"",	"0.0990\""]
        @@UTS << ["\#3",	"Fine",		"0.017857\"",	"0.0990\""]
        @@UTS << ["\#4",	"Coarse",	"0.025000\"",	"0.1120\""]
        @@UTS << ["\#4",	"Extra Fine",	"0.020833\"",	"0.1120\""]
        @@UTS << ["\#4",	"Fine",		"0.020833\"",	"0.1120\""]
        @@UTS << ["\#5",	"Coarse",	"0.025000\"",	"0.1250\""]
        @@UTS << ["\#5",	"Extra Fine",	"0.022727\"",	"0.1250\""]
        @@UTS << ["\#5",	"Fine",		"0.022727\"",	"0.1250\""]
        @@UTS << ["\#6",	"Coarse",	"0.031250\"",	"0.1380\""]
        @@UTS << ["\#6",	"Extra Fine",	"0.025000\"",	"0.1380\""]
        @@UTS << ["\#6",	"Fine",		"0.025000\"",	"0.1380\""]
        @@UTS << ["\#8",	"Coarse",	"0.031250\"",	"0.1640\""]
        @@UTS << ["\#8",	"Extra Fine",	"0.027778\"",	"0.1640\""]
        @@UTS << ["\#8",	"Fine",		"0.027778\"",	"0.1640\""]
        @@UTS << ["\#10",	"Coarse",	"0.041667\"",	"0.1900\""]
        @@UTS << ["\#10",	"Extra Fine",	"0.031250\"",	"0.1900\""]
        @@UTS << ["\#10",	"Fine",		"0.031250\"",	"0.1900\""]
        @@UTS << ["\#12",	"Coarse",	"0.041667\"",	"0.2160\""]
        @@UTS << ["\#12",	"Extra Fine",	"0.031250\"",	"0.2160\""]
        @@UTS << ["\#12",	"Fine",		"0.035714\"",	"0.2160\""]
        @@UTS << ["1/4",	"Coarse",	"0.050000\"",	"0.2500\""]
        @@UTS << ["1/4",	"Extra Fine",	"0.031250\"",	"0.2500\""]
        @@UTS << ["1/4",	"Fine",		"0.035714\"",	"0.2500\""]
        @@UTS << ["5/16",	"Coarse",	"0.055556\"",	"0.3125\""]
        @@UTS << ["5/16",	"Extra Fine",	"0.031250\"",	"0.3125\""]
        @@UTS << ["5/16",	"Fine",		"0.041667\"",	"0.3125\""]
        @@UTS << ["3/8",	"Coarse",	"0.062500\"",	"0.3750\""]
        @@UTS << ["3/8",	"Extra Fine",	"0.031250\"",	"0.3750\""]
        @@UTS << ["3/8",	"Fine",		"0.041667\"",	"0.3750\""]
        @@UTS << ["7/16",	"Coarse",	"0.071428\"",	"0.4375\""]
        @@UTS << ["7/16",	"Extra Fine",	"0.035714\"",	"0.4375\""]
        @@UTS << ["7/16",	"Fine",		"0.050000\"",	"0.4375\""]
        @@UTS << ["1/2",	"Coarse",	"0.076923\"",	"0.5000\""]
        @@UTS << ["1/2",	"Extra Fine",	"0.035714\"",	"0.5000\""]
        @@UTS << ["1/2",	"Fine",		"0.050000\"",	"0.5000\""]
        @@UTS << ["9/16",	"Coarse",	"0.083333\"",	"0.5625\""]
        @@UTS << ["9/16",	"Extra Fine",	"0.041667\"",	"0.5625\""]
        @@UTS << ["9/16",	"Fine",		"0.055556\"",	"0.5625\""]
        @@UTS << ["5/8",	"Coarse",	"0.090909\"",	"0.6250\""]
        @@UTS << ["5/8",	"Extra Fine",	"0.041667\"",	"0.6250\""]
        @@UTS << ["5/8",	"Fine",		"0.055556\"",	"0.6250\""]
        @@UTS << ["3/4",	"Coarse",	"0.100000\"",	"0.7500\""]
        @@UTS << ["3/4",	"Extra Fine",	"0.050000\"",	"0.7500\""]
        @@UTS << ["3/4",	"Fine",		"0.062500\"",	"0.7500\""]
        @@UTS << ["7/8",	"Coarse",	"0.111111\"",	"0.8750\""]
        @@UTS << ["7/8",	"Extra Fine",	"0.050000\"",	"0.8750\""]
        @@UTS << ["7/8",	"Fine",		"0.071428\"",	"0.8750\""]
        @@UTS << ["1.0",	"Coarse",	"0.125000\"",	"1.0000\""]
        @@UTS << ["1.0",	"Extra Fine",	"0.050000\"",	"1.0000\""]
        @@UTS << ["1.0",	"Fine",		"0.083333\"",	"1.0000\""]
        @@UTS << ["M1",		"Coarse",	"0.250mm",	"1.000mm"]
        @@UTS << ["M1",		"Extra Fine",	"0.200mm",	"1.000mm"]
        @@UTS << ["M1",		"Fine",		"0.200mm",	"1.000mm"]
        @@UTS << ["M1.2",	"Coarse",	"0.250mm",	"1.200mm"]
        @@UTS << ["M1.2",	"Extra Fine",	"0.200mm",	"1.200mm"]
        @@UTS << ["M1.2",	"Fine",		"0.200mm",	"1.200mm"]
        @@UTS << ["M1.4",	"Coarse",	"0.300mm",	"1.400mm"]
        @@UTS << ["M1.4",	"Extra Fine",	"0.200mm",	"1.400mm"]
        @@UTS << ["M1.4",	"Fine",		"0.200mm",	"1.400mm"]
        @@UTS << ["M1.6",	"Coarse",	"0.350mm",	"1.600mm"]
        @@UTS << ["M1.6",	"Extra Fine",	"0.200mm",	"1.600mm"]
        @@UTS << ["M1.6",	"Fine",		"0.200mm",	"1.600mm"]
        @@UTS << ["M1.8",	"Coarse",	"0.350mm",	"1.800mm"]
        @@UTS << ["M1.8",	"Extra Fine",	"0.200mm",	"1.800mm"]
        @@UTS << ["M1.8",	"Fine",		"0.200mm",	"1.800mm"]
        @@UTS << ["M2",		"Coarse",	"0.400mm",	"2.000mm"]
        @@UTS << ["M2",		"Extra Fine",	"0.250mm",	"2.000mm"]
        @@UTS << ["M2",		"Fine",		"0.250mm",	"2.000mm"]
        @@UTS << ["M2.5",	"Coarse",	"0.450mm",	"2.500mm"]
        @@UTS << ["M2.5",	"Extra Fine",	"0.350mm",	"2.500mm"]
        @@UTS << ["M2.5",	"Fine",		"0.350mm",	"2.500mm"]
        @@UTS << ["M3",		"Coarse",	"0.500mm",	"3.000mm"]
        @@UTS << ["M3",		"Extra Fine",	"0.350mm",	"3.000mm"]
        @@UTS << ["M3",		"Fine",		"0.350mm",	"3.000mm"]
        @@UTS << ["M3.5",	"Coarse",	"0.600mm",	"3.500mm"]
        @@UTS << ["M3.5",	"Extra Fine",	"0.350mm",	"3.500mm"]
        @@UTS << ["M3.5",	"Fine",		"0.350mm",	"3.500mm"]
        @@UTS << ["M4",		"Coarse",	"0.700mm",	"4.000mm"]
        @@UTS << ["M4",		"Extra Fine",	"0.500mm",	"4.000mm"]
        @@UTS << ["M4",		"Fine",		"0.500mm",	"4.000mm"]
        @@UTS << ["M5",		"Coarse",	"0.800mm",	"5.000mm"]
        @@UTS << ["M5",		"Extra Fine",	"0.500mm",	"5.000mm"]
        @@UTS << ["M5",		"Fine",		"0.500mm",	"5.000mm"]
        @@UTS << ["M6",		"Coarse",	"1.000mm",	"6.000mm"]
        @@UTS << ["M6",		"Extra Fine",	"0.750mm",	"6.000mm"]
        @@UTS << ["M6",		"Fine",		"0.750mm",	"6.000mm"]
        @@UTS << ["M7",		"Coarse",	"1.000mm",	"7.000mm"]
        @@UTS << ["M7",		"Extra Fine",	"0.750mm",	"7.000mm"]
        @@UTS << ["M7",		"Fine",		"0.750mm",	"7.000mm"]
        @@UTS << ["M8",		"Coarse",	"1.250mm",	"8.000mm"]
        @@UTS << ["M8",		"Extra Fine",	"0.750mm",	"8.000mm"]
        @@UTS << ["M8",		"Fine",		"1.000mm",	"8.000mm"]
        @@UTS << ["M10",	"Coarse",	"1.500mm",	"10.000mm"]
        @@UTS << ["M10",	"Extra Fine",	"1.000mm",	"10.000mm"]
        @@UTS << ["M10",	"Fine",		"1.250mm",	"10.000mm"]
        @@UTS << ["M12",	"Coarse",	"1.750mm",	"12.000mm"]
        @@UTS << ["M12",	"Extra Fine",	"1.250mm",	"12.000mm"]
        @@UTS << ["M12",	"Fine",		"1.500mm",	"12.000mm"]
        @@UTS << ["M14",	"Coarse",	"2.000mm",	"14.000mm"]
        @@UTS << ["M14",	"Extra Fine",	"1.500mm",	"14.000mm"]
        @@UTS << ["M14",	"Fine",		"1.500mm",	"14.000mm"]
        @@UTS << ["M16",	"Coarse",	"2.000mm",	"16.000mm"]
        @@UTS << ["M16",	"Extra Fine",	"1.500mm",	"16.000mm"]
        @@UTS << ["M16",	"Fine",		"1.500mm",	"16.000mm"]
        @@UTS << ["M18",	"Coarse",	"2.500mm",	"18.000mm"]
        @@UTS << ["M18",	"Extra Fine",	"1.500mm",	"18.000mm"]
        @@UTS << ["M18",	"Fine",		"2.000mm",	"18.000mm"]
        @@UTS << ["M20",	"Coarse",	"2.500mm",	"20.000mm"]
        @@UTS << ["M20",	"Extra Fine",	"1.500mm",	"20.000mm"]
        @@UTS << ["M20",	"Fine",		"2.000mm",	"20.000mm"]
        @@UTS << ["M22",	"Coarse",	"2.500mm",	"22.000mm"]
        @@UTS << ["M22",	"Extra Fine",	"1.500mm",	"22.000mm"]
        @@UTS << ["M22",	"Fine",		"2.000mm",	"22.000mm"]
        @@UTS << ["M24",	"Coarse",	"3.000mm",	"24.000mm"]
        @@UTS << ["M24",	"Extra Fine",	"2.000mm",	"24.000mm"]
        @@UTS << ["M24",	"Fine",		"2.000mm",	"24.000mm"]
        @@UTS << ["M27",	"Coarse",	"3.000mm",	"27.000mm"]
        @@UTS << ["M27",	"Extra Fine",	"2.000mm",	"27.000mm"]
        @@UTS << ["M27",	"Fine",		"2.000mm",	"27.000mm"]
        @@UTS << ["M30",	"Coarse",	"3.500mm",	"30.000mm"]
        @@UTS << ["M30",	"Extra Fine",	"2.000mm",	"30.000mm"]
        @@UTS << ["M30",	"Fine",		"2.000mm",	"30.000mm"]


        # 标准六角螺母
        # 螺栓尺寸、扳手、厚度
        @@NUT = []
        @@NUT << ["\#0",  	["5/32\"" ,	"5/32\""]]
        @@NUT << ["\#1",  	["5/32\"" ,	"0.050\""]]
        @@NUT << ["\#2",  	["3/16\"" ,	"0.066\""]]
        @@NUT << ["\#3",  	["3/16\"" ,	"0.066\""]]
        @@NUT << ["\#4",  	["1/4\""  ,	"0.098\""]]
        @@NUT << ["\#5",  	["5/16\"" ,	"0.114\""]]
        @@NUT << ["\#6",  	["5/16\"" ,	"0.109\""]]
        @@NUT << ["\#8",  	["11/32\"",	"0.125\""]]
        @@NUT << ["\#10", 	["3/8\""  ,	"0.130\""]]
        @@NUT << ["\#12", 	["7/16\"" ,	"0.161\""]]
        @@NUT << ["1/4",  	["7/16\"" ,	"19/64\""]]
        @@NUT << ["5/16", 	["1/2\""  ,	"7/32\""]]
        @@NUT << ["3/8", 	["9/16\"" ,	"1/4\""]]
        @@NUT << ["7/16",	["5/8\""  ,	"19/64\""]]
        @@NUT << ["1/2", 	["3/4\""  ,	"11/32\""]]
        @@NUT << ["9/16", 	["13/16\"",	"23/64\""]]
        @@NUT << ["5/8",  	["15/16\"",	"27/64\""]]
        @@NUT << ["3/4",  	["9/8\""  ,	"1/2\""]]
        @@NUT << ["7/8",  	["21/16\"",	"37/64\""]]
        @@NUT << ["1",    	["3/2\""  ,	"43/64\""]]
	@@NUT << ["M1",		["2.500mm",	"0.800mm"]]
	@@NUT << ["M1.2",	["3.000mm",	"1.000mm"]]
	@@NUT << ["M1.4",	["3.000mm",	"1.200mm"]]
	@@NUT << ["M1.6",	["3.200mm",	"1.300mm"]]
	@@NUT << ["M1.8",	["0.000mm",	"1.600mm"]]
	@@NUT << ["M2",		["4.000mm",	"1.800mm"]]
	@@NUT << ["M2.5",	["5.000mm",	"2.000mm"]]
	@@NUT << ["M3",		["5.500mm",	"2.400mm"]]
	@@NUT << ["M3.5",	["6.000mm",	"2.800mm"]]
	@@NUT << ["M4",		["7.000mm",	"3.000mm"]]
	@@NUT << ["M5",		["8.000mm",	"3.500mm"]]
	@@NUT << ["M6",		["10.000mm",	"4.000mm"]]
	@@NUT << ["M7",		["11.000mm",	"4.800mm"]]
	@@NUT << ["M8",		["13.000mm",	"5.300mm"]]
	@@NUT << ["M10",	["17.000mm",	"6.400mm"]]
	@@NUT << ["M12",	["19.000mm",	"7.500mm"]]
	@@NUT << ["M14",	["22.000mm",	"8.800mm"]]
	@@NUT << ["M16",	["24.000mm",	"10.000mm"]]
	@@NUT << ["M18",	["27.000mm",	"11.500mm"]]
	@@NUT << ["M20",	["30.000mm",	"12.500mm"]]
	@@NUT << ["M22",	["32.000mm",	"14.000mm"]]
	@@NUT << ["M24",	["36.000mm",	"15.000mm"]]
	@@NUT << ["M27",	["41.000mm",	"17.000mm"]]
	@@NUT << ["M30",	["46.000mm",	"18.700mm"]]

        # 标准螺栓
        # Threadlength is the minimum amount of thread to provide when Fullthread = No
        #         Hex head is wrench and head thickness
        #         Socket head is Allen key size, head diameter and thickness
        #         Machine head (pan head) is width, thickness, Phillips head size, diameter at top of phillips head
        #         Set Screw is Allen key size.
        #
        #         Boltsize, threadlength, 		HEX 			|Socket 			|Machine (width, height, phillips, cutout)      |Set screw
        @@BOLT = []
        @@BOLT << ["\#0",	"99.9\""	,["5/32\"" ,"5/32\""]	,["0.050\"","0.096\"","0.060\""],	["0.116\"",  "0.044\"", 0, "0.060\""] 		,["0.025\""]]
        @@BOLT << ["\#1",	"99.9\""	,["5/32\"" ,"0.050\""]	,["1/16\"","0.118\"","0.073\""]	,	["0.142\"",  "0.053\"", 0, "0.078\""] 		,["0.025\""]]
        @@BOLT << ["\#2",	"99.9\""	,["3/16\"" ,"0.066\""]	,["5/64\"","0.140\"","0.086\""]	,	["0.167\"",  "0.062\"", 1, "0.097\""] 		,["0.035\""]]
        @@BOLT << ["\#3",	"99.9\""	,["3/16\"" ,"0.066\""]	,["5/64\"","0.161\"","0.099\""]	,	["0.193\"",  "0.071\"", 1, "0.105\""] 		,["0.050\""]]
        @@BOLT << ["\#4",	"99.9\""	,["1/4\""  ,"0.098\""]	,["3/32\"","0.183\"","0.112\""]	,	["0.219\"",  "0.080\"", 1, "0.115\""] 		,["0.050\""]]
        @@BOLT << ["\#5",	"99.9\""	,["5/16\"" ,"0.114\""]	,["3/32\"","0.205\"","1/8\""  ]	,	["0.245\"",  "0.089\"", 2, "0.152\""] 		,["0.050\""]]
        @@BOLT << ["\#6", 	"99.9\""	,["5/16\"" ,"0.109\""]	,["7/64\"","0.226\"","0.138\""]	,	["0.270\"",  "0.097\"", 2, "0.159\""] 		,["1/16\""] ]
        @@BOLT << ["\#8",	"99.9\""	,["11/32\"","0.125\""]	,["9/64\"","0.270\"","0.164\""]	,	["0.322\"",  "0.115\"", 2, "0.175\""] 		,["5/64\""] ]
        @@BOLT << ["\#10",	"99.9\""	,["3/8\""  ,"0.130\""]	,["5/32\"","0.312\"","0.190\""]	,	["0.373\"",  "0.133\"", 2, "0.192\""] 		,["3/32\""] ]
        @@BOLT << ["\#12",	"99.9\""	,["7/16\"" ,"0.161\""]	,["5/32\"","0.324\"","0.216\""]	,	["0.425\"",  "0.151\"", 3, "0.252\""] 		,["3/32\""] ]
        @@BOLT << ["1/4",	"99.9\""	,["7/16\"" ,"5/32\""]	,["3/16\"","3/8\"","1/4\""    ]	,	["0.492\"",  "0.175\"", 3, "0.274\""] 		,["1/8\""]  ]
        @@BOLT << ["3/8",	"99.9\""	,["9/16\"" ,"15/64\""]	,["5/16\"","9/16\"","3/8\""   ]	,	["0.740\"",  "0.261\"", 4, "0.382\""] 		,["3/16\""] ]
        @@BOLT << ["5/16",	"99.9\""	,["1/2\""  ,"7/32\""]	,["1/4\"","15/32\"","5/16\""  ]	,	["0.615\"",  "0.218\"", 4, "0.343\""] 		,["5/32\""] ]
        @@BOLT << ["7/16",	"1.500\""	,["5/8\""  ,"19/64\""]	,["3/8\"","21/32\"","7/16\""  ]	,	["0.875\"",  "0.301\"", 4, "0.405\""] 		,["7/32\""] ]
        @@BOLT << ["1/2",	"1.687\""	,["3/4\""  ,"10/32\""]	,["3/8\"","3/4\"","1/2\""     ]	,	["0.813\"",  "0.35\"",  4, "0.428\""] 		,["1/4\""]  ]
        @@BOLT << ["9/16",	"1.8125\""	,["13/16\"","23/64\""]	,["7/16\"","21/32\"","7/16\"" ]	,	["0.914\"",  "0.39\"",  4, "0.428\""] 		,["9/32\""] ]
        @@BOLT << ["5/8",	"2.000\""	,["15/16\"","27/64\""]	,["1/2\"","15/16\"","5/8\""   ]	,	["1.016\"",  "0.44\"",  4, "0.428\""] 		,["5/16\""] ]
        @@BOLT << ["3/4",	"2.250\""	,["9/8\""  ,"1/2\""]	,["5/8\"","9/8\"","3/4\""     ]	,	["1.220\"",  "0.44\"",  4, "0.428\""] 		,["3/8\""]  ]
        @@BOLT << ["7/8",	"2.5625\""	,["21/16\"","37/64\""]	,["3/4\"","21/16\"","7/8\""   ]	,	["1.422\"",  "0.44\"",  4, "0.428\""] 		,["7/16\""] ]
        @@BOLT << ["1",		"2.875\""	,["3/2\""  ,"43/64\""]	,["3/4\"","3/2\"","1.0\""     ]	,	["1.600\"",  "0.44\"",  4, "0.428\""] 		,["1/2\""]  ]
	@@BOLT << ["M1",	"99.000mm",	["2.500mm","0.800mm"]	,["0.900mm",	"2.000mm","1.000mm"]	,["2.000mm",	"1.000mm",0,"1.000mm"]		,["0.700mm"]]
	@@BOLT << ["M1.2",	"99.000mm",	["3.000mm","1.000mm"]	,["0.900mm",	"2.200mm","1.200mm"]	,["2.400mm",	"1.000mm",0,"1.200mm"]		,["0.700mm"]]
	@@BOLT << ["M1.4",	"99.000mm",	["3.000mm","1.200mm"]	,["1.300mm",	"2.600mm","1.400mm"]	,["2.800mm",	"1.200mm",0,"1.400mm"]		,["0.700mm"]]
	@@BOLT << ["M1.6",	"99.000mm",	["3.200mm","1.300mm"]	,["1.500mm",	"3.000mm","1.600mm"]	,["3.200mm",	"1.400mm",0,"1.600mm"]		,["0.700mm"]]
	@@BOLT << ["M1.8",	"99.000mm",	["0.000mm","1.600mm"]	,["1.500mm",	"3.400mm","1.800mm"]	,["3.600mm",	"1.550mm",1,"1.800mm"]		,["0.900mm"]]
	@@BOLT << ["M2",	"99.000mm",	["4.000mm","1.800mm"]	,["1.500mm",	"3.800mm","2.000mm"]	,["4.000mm",	"1.700mm",1,"2.000mm"]		,["0.900mm"]]
	@@BOLT << ["M2.5",	"99.000mm",	["5.000mm","2.000mm"]	,["2.000mm",	"4.500mm","2.500mm"]	,["5.000mm",	"2.100mm",1,"2.500mm"]		,["1.300mm"]]
	@@BOLT << ["M3",	"99.000mm",	["5.500mm","2.400mm"]	,["2.500mm",	"5.500mm","3.000mm"]	,["6.000mm",	"2.400mm",1,"3.000mm"]		,["1.500mm"]]
	@@BOLT << ["M3.5",	"99.000mm",	["6.000mm","2.800mm"]	,["3.000mm",	"7.000mm","3.500mm"]	,["7.000mm",	"2.700mm",2,"3.900mm"]		,["1.500mm"]]
	@@BOLT << ["M4",	"15.000mm",	["7.000mm","3.000mm"]	,["3.000mm",	"7.000mm","4.000mm"]	,["8.000mm",	"3.100mm",2,"4.400mm"]		,["2.000mm"]]
	@@BOLT << ["M5",	"18.000mm",	["8.000mm","3.500mm"]	,["4.000mm",	"8.500mm","5.000mm"]	,["10.000mm",	"3.800mm",2,"4.900mm"]		,["2.500mm"]]
	@@BOLT << ["M6",	"20.000mm",	["10.000mm","4.000mm"]	,["5.000mm",	"10.000mm","6.000mm"]	,["12.000mm",	"4.600mm",3,"6.900mm"]		,["3.000mm"]]
	@@BOLT << ["M7",	"22.000mm",	["11.000mm","4.800mm"]	,["6.000mm",	"13.000mm","7.000mm"]	,["14.000mm",	"5.400mm",3,"8.000mm"]		,["3.500mm"]]
	@@BOLT << ["M8",	"24.000mm",	["13.000mm","5.300mm"]	,["6.000mm",	"13.000mm","8.000mm"]	,["16.000mm",	"6.000mm",4,"9.000mm"]		,["4.000mm"]]
	@@BOLT << ["M10",	"30.000mm",	["17.000mm","6.400mm"]	,["8.000mm",	"16.000mm","10.000mm"]	,["20.000mm",	"7.500mm",4,"10.200mm"]		,["5.000mm"]]
	@@BOLT << ["M12",	"34.000mm",	["19.000mm","7.500mm"]	,["10.000mm",	"18.000mm","12.000mm"]	,["24.000mm",	"9.000mm",4,"12.000mm"]		,["6.000mm"]]
	@@BOLT << ["M14",	"38.000mm",	["22.000mm","8.800mm"]	,["12.000mm",	"21.000mm","14.000mm"]	,["28.000mm",	"10.500mm",4,"12.000mm"]	,["7.000mm"]]
	@@BOLT << ["M16",	"42.000mm",	["24.000mm","10.000mm"]	,["14.000mm",	"24.000mm","16.000mm"]	,["32.000mm",	"12.000mm",4,"12.000mm"]	,["8.000mm"]]
	@@BOLT << ["M18",	"46.000mm",	["27.000mm","11.500mm"]	,["14.000mm",	"27.000mm","18.000mm"]	,["36.000mm",	"13.500mm",4,"12.000mm"]	,["9.000mm"]]
	@@BOLT << ["M20",	"52.000mm",	["30.000mm","12.500mm"]	,["17.000mm",	"30.000mm","20.000mm"]	,["40.000mm",	"15.000mm",4,"12.000mm"]	,["10.000mm"]]
	@@BOLT << ["M22",	"64.000mm",	["32.000mm","14.000mm"]	,["17.000mm",	"33.000mm","22.000mm"]	,["44.000mm",	"16.500mm",4,"12.000mm"]	,["11.000mm"]]
	@@BOLT << ["M24",	"64.000mm",	["36.000mm","15.000mm"]	,["19.000mm",	"36.000mm","24.000mm"]	,["48.000mm",	"18.000mm",4,"12.000mm"]	,["12.000mm"]]
	@@BOLT << ["M27",	"64.000mm",	["41.000mm","17.000mm"]	,["19.000mm",	"40.000mm","27.000mm"]	,["54.000mm",	"20.250mm",4,"12.000mm"]	,["12.000mm"]]
	@@BOLT << ["M30",	"64.000mm",	["46.000mm","18.700mm"]	,["22.000mm",	"45.000mm","30.000mm"]	,["60.000mm",	"22.500mm",4,"12.000mm"]	,["14.000mm"]]


        #标准十字头螺丝刀尺寸 0 到 4
        # 尺寸 4 提供给 1/2 英寸以上的机头，即使它们可能很难找到 :D
        #
        @@PHILLIPS = []  # [size, slot width, bottom circle diam <- unused...]
        @@PHILLIPS << [0, "0.0320\"", "0.055\""]
        @@PHILLIPS << [1, "0.0460\"", "0.078\""]
        @@PHILLIPS << [2, "0.0560\"", "0.094\""]
        @@PHILLIPS << [3, "0.0750\"", "0.124\""]
        @@PHILLIPS << [4, "0.0920\"", "0.156\""]


#=============================================================================
# Validate a measurement input and convert it to local units
# Grrrr... fractions marked as inches are converted to local units such as mm
# anyway by to_l 
#=============================================================================
   def self.cLength(valstr, units)
      result = -1.0
      valstr.gsub!(/\s+/, "")

      case valstr
         when /^[0-9]*\.?[0-9]+$/
             #Only a number... convert to units specified
             if units == "SAE"
                 result = (valstr.to_f).inch rescue -1.0
             else
                 result = (valstr.to_f).mm rescue -1.0
             end
         when /^[0-9]*\.?[0-9]+(\"|cm|CM|mm|MM|M|')$/
             #Specified format...
              result = valstr.to_l rescue -1.0
         when /^[0-9]+\/[0-9]+.*$/
             #Fraction. Must be inches
             v = /^([0-9]+)\/([0-9]+)/.match(valstr)
             result = (v[1].to_f / v[2].to_f).inch rescue -1.0
         else
             #BAD SIZE
             result = -1.0
      end
      result
   end
#=============================================================================

end #class
end #module EPFasteners
end #module EP
