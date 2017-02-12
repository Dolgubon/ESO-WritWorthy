local WritWorthy = _G['WritWorthy'] -- defined in WritWorthy_Util.lua

-- A big table of links that lets me maintain all my OTHER data tables with
-- nice human-readable strings like "dreugh wax" instead of
--"|H0:item:54177:34:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
--
WritWorthy.LINK = {
    ["ancestor silk"      ] = "|H0:item:64504:30:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["rubedo leather"     ] = "|H0:item:64506:30:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["rubedite"           ] = "|H0:item:64489:30:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["ruby ash"           ] = "|H0:item:64502:30:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"

,   ["hemming"            ] = "|H0:item:54174:31:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["embroidery"         ] = "|H0:item:54175:32:50:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["elegant lining"     ] = "|H0:item:54176:33:50:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["dreugh wax"         ] = "|H0:item:54177:34:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"

,   ["honing stone"       ] = "|H0:item:54170:31:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["dwarven oil"        ] = "|H0:item:54171:32:50:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["grain solvent"      ] = "|H0:item:54172:33:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["tempering alloy"    ] = "|H0:item:54173:34:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"

,   ["pitch"              ] = "|H0:item:54178:31:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["turpen"             ] = "|H0:item:54179:32:50:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["mastic"             ] = "|H0:item:54180:33:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["rosin"              ] = "|H0:item:54181:34:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"

,   ["adamantite"         ] = "|H0:item:33252:30:50:0:0:0:0:0:0:0:0:0:0:0:0:7:0:0:0:0:0|h|h"
,   ["obsidian"           ] = "|H0:item:33253:30:0:0:0:0:0:0:0:0:0:0:0:0:0:4:0:0:0:0:0|h|h"
,   ["bone"               ] = "|H0:item:33194:30:0:0:0:0:0:0:0:0:0:0:0:0:0:8:0:0:0:0:0|h|h"
,   ["corundum"           ] = "|H0:item:33256:30:0:0:0:0:0:0:0:0:0:0:0:0:0:5:0:0:0:0:0|h|h"
,   ["molybdenum"         ] = "|H0:item:33251:30:13:0:0:0:0:0:0:0:0:0:0:0:0:1:0:0:0:0:0|h|h"
,   ["starmetal"          ] = "|H0:item:33258:30:0:0:0:0:0:0:0:0:0:0:0:0:0:2:0:0:0:0:0|h|h"
,   ["moonstone"          ] = "|H0:item:33255:30:50:0:0:0:0:0:0:0:0:0:0:0:0:9:0:0:0:0:0|h|h"
,   ["manganese"          ] = "|H0:item:33257:30:50:0:0:0:0:0:0:0:0:0:0:0:0:3:0:0:0:0:0|h|h"
,   ["flint"              ] = "|H0:item:33150:30:0:0:0:0:0:0:0:0:0:0:0:0:0:6:0:0:0:0:0|h|h"
,   ["nickel"             ] = "|H0:item:33254:30:50:0:0:0:0:0:0:0:0:0:0:0:0:34:0:0:0:0:0|h|h"
,   ["palladium"          ] = "|H0:item:46152:30:0:0:0:0:0:0:0:0:0:0:0:0:0:15:0:0:0:0:0|h|h"
,   ["copper"             ] = "|H0:item:46149:30:23:0:0:0:0:0:0:0:0:0:0:0:0:17:0:0:0:0:0|h|h"
,   ["argentum"           ] = "|H0:item:46150:30:16:0:0:0:0:0:0:0:0:0:0:0:0:19:0:0:0:0:0|h|h"
,   ["daedra heart"       ] = "|H0:item:46151:30:50:0:0:0:0:0:0:0:0:0:0:0:0:20:0:0:0:0:0|h|h"
,   ["dwemer frame"       ] = "|H0:item:57587:30:0:0:0:0:0:0:0:0:0:0:0:0:0:14:0:0:0:0:0|h|h"
,   ["malachite"          ] = "|H0:item:64689:6:0:0:0:0:0:0:0:0:0:0:0:0:0:28:0:0:0:0:0|h|h"
,   ["charcoal of remorse"] = "|H0:item:59922:30:0:0:0:0:0:0:0:0:0:0:0:0:0:29:0:0:0:0:0|h|h"
,   ["goldscale"          ] = "|H0:item:64687:30:50:0:0:0:0:0:0:0:0:0:0:0:0:33:0:0:0:0:0|h|h"
,   ["laurel"             ] = "|H0:item:64713:6:50:0:0:0:0:0:0:0:0:0:0:0:0:26:0:0:0:0:0|h|h"
,   ["cassiterite"        ] = "|H0:item:69555:30:0:0:0:0:0:0:0:0:0:0:0:0:0:22:0:0:0:0:0|h|h"
,   ["auric tusk"         ] = "|H0:item:71582:30:0:0:0:0:0:0:0:0:0:0:0:0:0:21:0:0:0:0:0|h|h"
,   ["potash"             ] = "|H0:item:71584:30:50:0:0:0:0:0:0:0:0:0:0:0:0:13:0:0:0:0:0|h|h"
,   ["rogue's soot"       ] = "|H0:item:71538:30:0:0:0:0:0:0:0:0:0:0:0:0:0:47:0:0:0:0:0|h|h"
,   ["eagle feather"      ] = "|H0:item:71738:30:0:0:0:0:0:0:0:0:0:0:0:0:0:25:0:0:0:0:0|h|h"
,   ["lion fang"          ] = "|H0:item:71742:30:0:0:0:0:0:0:0:0:0:0:0:0:0:23:0:0:0:0:0|h|h"
,   ["dragon scute"       ] = "|H0:item:71740:30:0:0:0:0:0:0:0:0:0:0:0:0:0:24:0:0:0:0:0|h|h"
,   ["azure plasm"        ] = "|H0:item:71766:30:50:0:0:0:0:0:0:0:0:0:0:0:0:30:0:0:0:0:0|h|h"
,   ["fine chalk"         ] = "|H0:item:75370:30:0:0:0:0:0:0:0:0:0:0:0:0:0:11:0:0:0:0:0|h|h"
,   ["polished shilling"  ] = "|H0:item:76914:30:0:0:0:0:0:0:0:0:0:0:0:0:0:41:0:0:0:0:0|h|h"
,   ["tainted blood"      ] = "|H0:item:76910:30:0:0:0:0:0:0:0:0:0:0:0:0:0:46:0:0:0:0:0|h|h"
,   ["defiled whiskers"   ] = "|H0:item:79672:30:0:0:0:0:0:0:0:0:0:0:0:0:0:45:0:0:0:0:0|h|h"
,   ["black beeswax"      ] = "|H0:item:79304:30:0:0:0:0:0:0:0:0:0:0:0:0:0:12:0:0:0:0:0|h|h"
,   ["oxblood fungus"     ] = "|H0:item:81994:30:0:0:0:0:0:0:0:0:0:0:0:0:0:39:0:0:0:0:0|h|h"
,   ["pearl sand"         ] = "|H0:item:81996:30:0:0:0:0:0:0:0:0:0:0:0:0:0:16:0:0:0:0:0|h|h"
,   ["ferrous salts"      ] = "|H0:item:64685:30:1:0:0:0:0:0:0:0:0:0:0:0:0:35:0:0:0:0:0|h|h"
,   ["star sapphire"      ] = "|H0:item:81998:30:1:0:0:0:0:0:0:0:0:0:0:0:0:27:0:0:0:0:0|h|h"
,   ["pristine shroud"    ] = "|H0:item:75373:30:1:0:0:0:0:0:0:0:0:0:0:0:0:31:0:0:0:0:0|h|h"
,   ["amber marble"       ] = "|H0:item:82000:30:1:0:0:0:0:0:0:0:0:0:0:0:0:59:0:0:0:0:0|h|h"
,   ["grinstones"         ] = "|H0:item:82002:30:1:0:0:0:0:0:0:0:0:0:0:0:0:58:0:0:0:0:0|h|h"
,   ["stalhrim shard"     ] = "|H0:item:114283:30:1:0:0:0:0:0:0:0:0:0:0:0:0:53:0:0:0:0:0|h|h"
,   ["wolfsbane incense"  ] = "|H0:item:96388:30:1:0:0:0:0:0:0:0:0:0:0:0:0:42:0:0:0:0:0|h|h"

,   ["quartz"             ] = "|H0:item:4456:30:50:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["diamond"            ] = "|H0:item:23219:30:50:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["sardonyx"           ] = "|H0:item:30221:30:50:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["almandine"          ] = "|H0:item:23221:30:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["emerald"            ] = "|H0:item:4442:30:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["bloodstone"         ] = "|H0:item:30219:30:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["garnet"             ] = "|H0:item:23171:30:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["sapphire"           ] = "|H0:item:23173:30:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["fortified nirncrux" ] = "|H0:item:56862:30:6:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["chysolite"          ] = "|H0:item:23203:30:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["amethyst"           ] = "|H0:item:23204:30:50:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["ruby"               ] = "|H0:item:4486:30:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["jade"               ] = "|H0:item:810:30:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["turquoise"          ] = "|H0:item:813:30:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["carnelian"          ] = "|H0:item:23165:30:50:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["fire opal"          ] = "|H0:item:23149:30:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["citrine"            ] = "|H0:item:16291:30:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["potent nirncrux"    ] = "|H0:item:56863:30:46:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"

,   ["Blessed Thistle"    ] = "|H0:item:30157:31:7:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["Blue Entoloma"      ] = "|H0:item:30148:31:36:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["Bugloss"            ] = "|H0:item:30160:31:6:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["Columbine"          ] = "|H0:item:30164:31:13:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["Corn Flower"        ] = "|H0:item:30161:31:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["Dragonthorn"        ] = "|H0:item:30162:31:7:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["Emetic Russula"     ] = "|H0:item:30151:31:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["Imp Stool"          ] = "|H0:item:30156:31:46:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["Lady's Smock"       ] = "|H0:item:30158:31:6:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["Luminous Russula"   ] = "|H0:item:30155:31:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["Mountain flower"    ] = "|H0:item:30163:31:46:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["Namira's Rot"       ] = "|H0:item:30153:31:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["Nirnroot"           ] = "|H0:item:30165:31:13:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["Stinkhorn"          ] = "|H0:item:30149:31:13:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["Violet Coprinus"    ] = "|H0:item:30152:31:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["Water Hyacinth"     ] = "|H0:item:30166:31:46:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["White Cap"          ] = "|H0:item:30154:31:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["Wormwood"           ] = "|H0:item:30159:31:16:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["Beetle Scuttle"     ] = "|H0:item:77583:31:3:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["Butterfly Wing"     ] = "|H0:item:77585:31:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["Fleshfly Larva"     ] = "|H0:item:77587:31:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["Mudcrab Chitin"     ] = "|H0:item:77591:31:50:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["Nightshade"         ] = "|H0:item:77590:31:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["Scrib Jelly"        ] = "|H0:item:77589:31:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["Spider Egg"         ] = "|H0:item:77584:31:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["Torchbug Thorax"    ] = "|H0:item:77581:31:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"

,   ["Lorkhan's Tears"    ] = "|H0:item:64501:308:50:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["Alkahest"           ] = "|H0:item:75365:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"

,   ["Rejera"             ] = "|H0:item:64509:308:39:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["Repora"             ] = "|H0:item:68341:366:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["Jehade"             ] = "|H0:item:64508:308:6:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["Itade"              ] = "|H0:item:68340:366:50:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"

,   ["Dekeipa"            ] = "|H0:item:45839:20:46:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["Deni"               ] = "|H0:item:45833:20:46:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["Denima"             ] = "|H0:item:45836:20:50:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["Deteri"             ] = "|H0:item:45842:20:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["Haoko"              ] = "|H0:item:45841:20:50:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["Hakeijo"            ] = "|H0:item:68342:20:50:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["Kaderi"             ] = "|H0:item:45849:20:50:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["Kuoko"              ] = "|H0:item:45837:20:50:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["Makderi"            ] = "|H0:item:45848:20:26:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["Makko"              ] = "|H0:item:45832:20:46:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["Makkoma"            ] = "|H0:item:45835:20:36:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["Meip"               ] = "|H0:item:45840:20:50:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["Oko"                ] = "|H0:item:45831:20:46:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["Okoma"              ] = "|H0:item:45834:20:46:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["Okori"              ] = "|H0:item:45843:20:50:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["Oru"                ] = "|H0:item:45846:20:50:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["Rakeipa"            ] = "|H0:item:45838:20:13:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["Taderi"             ] = "|H0:item:45847:20:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["Rekuta"             ] = "|H0:item:45853:23:46:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
,   ["Kuta"               ] = "|H0:item:45854:24:50:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"

}
