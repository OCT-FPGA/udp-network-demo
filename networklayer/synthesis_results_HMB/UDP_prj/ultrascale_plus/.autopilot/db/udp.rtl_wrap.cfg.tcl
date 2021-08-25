set lang "C++"
set moduleName "udp"
set moduleIsExternC "0"
set rawDecl ""
set globalVariable ""
set PortList ""
set PortName0 "rxUdpDataIn"
set BitWidth0 "1024"
set ArrayOpt0 ""
set Const0 "0"
set Volatile0 "0"
set Pointer0 "2"
set Reference0 "1"
set Dims0 [list 0]
set Interface0 [list AP_STREAM 0] 
set structMem0 ""
set PortName00 "data"
set BitWidth00 "512"
set ArrayOpt00 ""
set Const00 "0"
set Volatile00 "0"
set Pointer00 "0"
set Reference00 "0"
set Dims00 [list 0]
set Interface00 "wire"
set DataType00 "[list ap_uint 512 ]"
set Port00 [list $PortName00 $Interface00 $DataType00 $Pointer00 $Dims00 $Const00 $Volatile00 $ArrayOpt00]
lappend structMem0 $Port00
set PortName01 "keep"
set BitWidth01 "64"
set ArrayOpt01 ""
set Const01 "0"
set Volatile01 "0"
set Pointer01 "0"
set Reference01 "0"
set Dims01 [list 0]
set Interface01 "wire"
set DataType01 "[list ap_uint 64 ]"
set Port01 [list $PortName01 $Interface01 $DataType01 $Pointer01 $Dims01 $Const01 $Volatile01 $ArrayOpt01]
lappend structMem0 $Port01
set PortName02 "last"
set BitWidth02 "8"
set ArrayOpt02 ""
set Const02 "0"
set Volatile02 "0"
set Pointer02 "0"
set Reference02 "0"
set Dims02 [list 0]
set Interface02 "wire"
set DataType02 "[list ap_uint 1 ]"
set Port02 [list $PortName02 $Interface02 $DataType02 $Pointer02 $Dims02 $Const02 $Volatile02 $ArrayOpt02]
lappend structMem0 $Port02
set DataType0tp0 "int"
set structParameter0 [list [list $DataType0tp0 D] ]
set structArgument0 [list 512 ]
set NameSpace0 [list ]
set structIsPacked0 "0"
set DataType0 [list "my_axis<512>" "struct my_axis" $structMem0 1 0 $structParameter0 $structArgument0 $NameSpace0 $structIsPacked0]
set Port0 [list $PortName0 $Interface0 $DataType0 $Pointer0 $Dims0 $Const0 $Volatile0 $ArrayOpt0]
lappend PortList $Port0
set PortName1 "txUdpDataOut"
set BitWidth1 "1024"
set ArrayOpt1 ""
set Const1 "0"
set Volatile1 "0"
set Pointer1 "2"
set Reference1 "1"
set Dims1 [list 0]
set Interface1 [list AP_STREAM 0] 
set structMem1 ""
set PortName10 "data"
set BitWidth10 "512"
set ArrayOpt10 ""
set Const10 "0"
set Volatile10 "0"
set Pointer10 "0"
set Reference10 "0"
set Dims10 [list 0]
set Interface10 "wire"
set DataType10 "[list ap_uint 512 ]"
set Port10 [list $PortName10 $Interface10 $DataType10 $Pointer10 $Dims10 $Const10 $Volatile10 $ArrayOpt10]
lappend structMem1 $Port10
set PortName11 "keep"
set BitWidth11 "64"
set ArrayOpt11 ""
set Const11 "0"
set Volatile11 "0"
set Pointer11 "0"
set Reference11 "0"
set Dims11 [list 0]
set Interface11 "wire"
set DataType11 "[list ap_uint 64 ]"
set Port11 [list $PortName11 $Interface11 $DataType11 $Pointer11 $Dims11 $Const11 $Volatile11 $ArrayOpt11]
lappend structMem1 $Port11
set PortName12 "last"
set BitWidth12 "8"
set ArrayOpt12 ""
set Const12 "0"
set Volatile12 "0"
set Pointer12 "0"
set Reference12 "0"
set Dims12 [list 0]
set Interface12 "wire"
set DataType12 "[list ap_uint 1 ]"
set Port12 [list $PortName12 $Interface12 $DataType12 $Pointer12 $Dims12 $Const12 $Volatile12 $ArrayOpt12]
lappend structMem1 $Port12
set DataType1tp0 "int"
set structParameter1 [list [list $DataType1tp0 D] ]
set structArgument1 [list 512 ]
set NameSpace1 [list ]
set structIsPacked1 "0"
set DataType1 [list "my_axis<512>" "struct my_axis" $structMem1 1 0 $structParameter1 $structArgument1 $NameSpace1 $structIsPacked1]
set Port1 [list $PortName1 $Interface1 $DataType1 $Pointer1 $Dims1 $Const1 $Volatile1 $ArrayOpt1]
lappend PortList $Port1
set PortName2 "DataOutApp"
set BitWidth2 "1024"
set ArrayOpt2 ""
set Const2 "0"
set Volatile2 "0"
set Pointer2 "2"
set Reference2 "1"
set Dims2 [list 0]
set Interface2 [list AP_STREAM 0] 
set structMem2 ""
set PortName20 "data"
set BitWidth20 "512"
set ArrayOpt20 ""
set Const20 "0"
set Volatile20 "0"
set Pointer20 "0"
set Reference20 "0"
set Dims20 [list 0]
set Interface20 "wire"
set DataType20 "[list ap_uint 512 ]"
set Port20 [list $PortName20 $Interface20 $DataType20 $Pointer20 $Dims20 $Const20 $Volatile20 $ArrayOpt20]
lappend structMem2 $Port20
set PortName21 "keep"
set BitWidth21 "64"
set ArrayOpt21 ""
set Const21 "0"
set Volatile21 "0"
set Pointer21 "0"
set Reference21 "0"
set Dims21 [list 0]
set Interface21 "wire"
set DataType21 "[list ap_uint 64 ]"
set Port21 [list $PortName21 $Interface21 $DataType21 $Pointer21 $Dims21 $Const21 $Volatile21 $ArrayOpt21]
lappend structMem2 $Port21
set PortName22 "dest"
set BitWidth22 "16"
set ArrayOpt22 ""
set Const22 "0"
set Volatile22 "0"
set Pointer22 "0"
set Reference22 "0"
set Dims22 [list 0]
set Interface22 "wire"
set DataType22 "[list ap_uint 16 ]"
set Port22 [list $PortName22 $Interface22 $DataType22 $Pointer22 $Dims22 $Const22 $Volatile22 $ArrayOpt22]
lappend structMem2 $Port22
set PortName23 "last"
set BitWidth23 "8"
set ArrayOpt23 ""
set Const23 "0"
set Volatile23 "0"
set Pointer23 "0"
set Reference23 "0"
set Dims23 [list 0]
set Interface23 "wire"
set DataType23 "[list ap_uint 1 ]"
set Port23 [list $PortName23 $Interface23 $DataType23 $Pointer23 $Dims23 $Const23 $Volatile23 $ArrayOpt23]
lappend structMem2 $Port23
set PortName24 "user"
set BitWidth24 "96"
set ArrayOpt24 ""
set Const24 "0"
set Volatile24 "0"
set Pointer24 "0"
set Reference24 "0"
set Dims24 [list 0]
set Interface24 "wire"
set structMem24 ""
set PortName240 "myIP"
set BitWidth240 "32"
set ArrayOpt240 ""
set Const240 "0"
set Volatile240 "0"
set Pointer240 "0"
set Reference240 "0"
set Dims240 [list 0]
set Interface240 "wire"
set DataType240 "[list ap_uint 32 ]"
set Port240 [list $PortName240 $Interface240 $DataType240 $Pointer240 $Dims240 $Const240 $Volatile240 $ArrayOpt240]
lappend structMem24 $Port240
set PortName241 "theirIP"
set BitWidth241 "32"
set ArrayOpt241 ""
set Const241 "0"
set Volatile241 "0"
set Pointer241 "0"
set Reference241 "0"
set Dims241 [list 0]
set Interface241 "wire"
set DataType241 "[list ap_uint 32 ]"
set Port241 [list $PortName241 $Interface241 $DataType241 $Pointer241 $Dims241 $Const241 $Volatile241 $ArrayOpt241]
lappend structMem24 $Port241
set PortName242 "myPort"
set BitWidth242 "16"
set ArrayOpt242 ""
set Const242 "0"
set Volatile242 "0"
set Pointer242 "0"
set Reference242 "0"
set Dims242 [list 0]
set Interface242 "wire"
set DataType242 "[list ap_uint 16 ]"
set Port242 [list $PortName242 $Interface242 $DataType242 $Pointer242 $Dims242 $Const242 $Volatile242 $ArrayOpt242]
lappend structMem24 $Port242
set PortName243 "theirPort"
set BitWidth243 "16"
set ArrayOpt243 ""
set Const243 "0"
set Volatile243 "0"
set Pointer243 "0"
set Reference243 "0"
set Dims243 [list 0]
set Interface243 "wire"
set DataType243 "[list ap_uint 16 ]"
set Port243 [list $PortName243 $Interface243 $DataType243 $Pointer243 $Dims243 $Const243 $Volatile243 $ArrayOpt243]
lappend structMem24 $Port243
set structParameter24 [list ]
set structArgument24 [list ]
set NameSpace24 [list ]
set structIsPacked24 "0"
set DataType24 [list "userMetadata" "struct userMetadata" $structMem24 1 0 $structParameter24 $structArgument24 $NameSpace24 $structIsPacked24]
set Port24 [list $PortName24 $Interface24 $DataType24 $Pointer24 $Dims24 $Const24 $Volatile24 $ArrayOpt24]
lappend structMem2 $Port24
set DataType2tp0 "int"
set structParameter2 [list [list $DataType2tp0 D] ]
set structArgument2 [list 512 ]
set NameSpace2 [list ]
set structIsPacked2 "0"
set DataType2 [list "my_axis_udp<512>" "struct my_axis_udp" $structMem2 1 0 $structParameter2 $structArgument2 $NameSpace2 $structIsPacked2]
set Port2 [list $PortName2 $Interface2 $DataType2 $Pointer2 $Dims2 $Const2 $Volatile2 $ArrayOpt2]
lappend PortList $Port2
set PortName3 "DataInApp"
set BitWidth3 "1024"
set ArrayOpt3 ""
set Const3 "0"
set Volatile3 "0"
set Pointer3 "2"
set Reference3 "1"
set Dims3 [list 0]
set Interface3 [list AP_STREAM 0] 
set structMem3 ""
set PortName30 "data"
set BitWidth30 "512"
set ArrayOpt30 ""
set Const30 "0"
set Volatile30 "0"
set Pointer30 "0"
set Reference30 "0"
set Dims30 [list 0]
set Interface30 "wire"
set DataType30 "[list ap_uint 512 ]"
set Port30 [list $PortName30 $Interface30 $DataType30 $Pointer30 $Dims30 $Const30 $Volatile30 $ArrayOpt30]
lappend structMem3 $Port30
set PortName31 "keep"
set BitWidth31 "64"
set ArrayOpt31 ""
set Const31 "0"
set Volatile31 "0"
set Pointer31 "0"
set Reference31 "0"
set Dims31 [list 0]
set Interface31 "wire"
set DataType31 "[list ap_uint 64 ]"
set Port31 [list $PortName31 $Interface31 $DataType31 $Pointer31 $Dims31 $Const31 $Volatile31 $ArrayOpt31]
lappend structMem3 $Port31
set PortName32 "dest"
set BitWidth32 "16"
set ArrayOpt32 ""
set Const32 "0"
set Volatile32 "0"
set Pointer32 "0"
set Reference32 "0"
set Dims32 [list 0]
set Interface32 "wire"
set DataType32 "[list ap_uint 16 ]"
set Port32 [list $PortName32 $Interface32 $DataType32 $Pointer32 $Dims32 $Const32 $Volatile32 $ArrayOpt32]
lappend structMem3 $Port32
set PortName33 "last"
set BitWidth33 "8"
set ArrayOpt33 ""
set Const33 "0"
set Volatile33 "0"
set Pointer33 "0"
set Reference33 "0"
set Dims33 [list 0]
set Interface33 "wire"
set DataType33 "[list ap_uint 1 ]"
set Port33 [list $PortName33 $Interface33 $DataType33 $Pointer33 $Dims33 $Const33 $Volatile33 $ArrayOpt33]
lappend structMem3 $Port33
set PortName34 "user"
set BitWidth34 "96"
set ArrayOpt34 ""
set Const34 "0"
set Volatile34 "0"
set Pointer34 "0"
set Reference34 "0"
set Dims34 [list 0]
set Interface34 "wire"
set structMem34 ""
set PortName340 "myIP"
set BitWidth340 "32"
set ArrayOpt340 ""
set Const340 "0"
set Volatile340 "0"
set Pointer340 "0"
set Reference340 "0"
set Dims340 [list 0]
set Interface340 "wire"
set DataType340 "[list ap_uint 32 ]"
set Port340 [list $PortName340 $Interface340 $DataType340 $Pointer340 $Dims340 $Const340 $Volatile340 $ArrayOpt340]
lappend structMem34 $Port340
set PortName341 "theirIP"
set BitWidth341 "32"
set ArrayOpt341 ""
set Const341 "0"
set Volatile341 "0"
set Pointer341 "0"
set Reference341 "0"
set Dims341 [list 0]
set Interface341 "wire"
set DataType341 "[list ap_uint 32 ]"
set Port341 [list $PortName341 $Interface341 $DataType341 $Pointer341 $Dims341 $Const341 $Volatile341 $ArrayOpt341]
lappend structMem34 $Port341
set PortName342 "myPort"
set BitWidth342 "16"
set ArrayOpt342 ""
set Const342 "0"
set Volatile342 "0"
set Pointer342 "0"
set Reference342 "0"
set Dims342 [list 0]
set Interface342 "wire"
set DataType342 "[list ap_uint 16 ]"
set Port342 [list $PortName342 $Interface342 $DataType342 $Pointer342 $Dims342 $Const342 $Volatile342 $ArrayOpt342]
lappend structMem34 $Port342
set PortName343 "theirPort"
set BitWidth343 "16"
set ArrayOpt343 ""
set Const343 "0"
set Volatile343 "0"
set Pointer343 "0"
set Reference343 "0"
set Dims343 [list 0]
set Interface343 "wire"
set DataType343 "[list ap_uint 16 ]"
set Port343 [list $PortName343 $Interface343 $DataType343 $Pointer343 $Dims343 $Const343 $Volatile343 $ArrayOpt343]
lappend structMem34 $Port343
set structParameter34 [list ]
set structArgument34 [list ]
set NameSpace34 [list ]
set structIsPacked34 "0"
set DataType34 [list "userMetadata" "struct userMetadata" $structMem34 1 0 $structParameter34 $structArgument34 $NameSpace34 $structIsPacked34]
set Port34 [list $PortName34 $Interface34 $DataType34 $Pointer34 $Dims34 $Const34 $Volatile34 $ArrayOpt34]
lappend structMem3 $Port34
set DataType3tp0 "int"
set structParameter3 [list [list $DataType3tp0 D] ]
set structArgument3 [list 512 ]
set NameSpace3 [list ]
set structIsPacked3 "0"
set DataType3 [list "my_axis_udp<512>" "struct my_axis_udp" $structMem3 1 0 $structParameter3 $structArgument3 $NameSpace3 $structIsPacked3]
set Port3 [list $PortName3 $Interface3 $DataType3 $Pointer3 $Dims3 $Const3 $Volatile3 $ArrayOpt3]
lappend PortList $Port3
set PortName4 "myIpAddress"
set BitWidth4 "32"
set ArrayOpt4 ""
set Const4 "0"
set Volatile4 "0"
set Pointer4 "2"
set Reference4 "1"
set Dims4 [list 0]
set Interface4 "wire"
set DataType4 "[list ap_uint 32 ]"
set Port4 [list $PortName4 $Interface4 $DataType4 $Pointer4 $Dims4 $Const4 $Volatile4 $ArrayOpt4]
lappend PortList $Port4
set PortName5 "SocketTable"
set BitWidth5 "64"
set ArrayOpt5 ""
set Const5 "0"
set Volatile5 "0"
set Pointer5 "0"
set Reference5 "0"
set Dims5 [list 16]
set Interface5 "wire"
set structMem5 ""
set PortName50 "theirIP"
set BitWidth50 "32"
set ArrayOpt50 ""
set Const50 "0"
set Volatile50 "0"
set Pointer50 "0"
set Reference50 "0"
set Dims50 [list 0]
set Interface50 "wire"
set DataType50 "[list ap_uint 32 ]"
set Port50 [list $PortName50 $Interface50 $DataType50 $Pointer50 $Dims50 $Const50 $Volatile50 $ArrayOpt50]
lappend structMem5 $Port50
set PortName51 "theirPort"
set BitWidth51 "16"
set ArrayOpt51 ""
set Const51 "0"
set Volatile51 "0"
set Pointer51 "0"
set Reference51 "0"
set Dims51 [list 0]
set Interface51 "wire"
set DataType51 "[list ap_uint 16 ]"
set Port51 [list $PortName51 $Interface51 $DataType51 $Pointer51 $Dims51 $Const51 $Volatile51 $ArrayOpt51]
lappend structMem5 $Port51
set PortName52 "myPort"
set BitWidth52 "16"
set ArrayOpt52 ""
set Const52 "0"
set Volatile52 "0"
set Pointer52 "0"
set Reference52 "0"
set Dims52 [list 0]
set Interface52 "wire"
set DataType52 "[list ap_uint 16 ]"
set Port52 [list $PortName52 $Interface52 $DataType52 $Pointer52 $Dims52 $Const52 $Volatile52 $ArrayOpt52]
lappend structMem5 $Port52
set PortName53 "valid"
set BitWidth53 "8"
set ArrayOpt53 ""
set Const53 "0"
set Volatile53 "0"
set Pointer53 "0"
set Reference53 "0"
set Dims53 [list 0]
set Interface53 "wire"
set DataType53 "[list ap_uint 1 ]"
set Port53 [list $PortName53 $Interface53 $DataType53 $Pointer53 $Dims53 $Const53 $Volatile53 $ArrayOpt53]
lappend structMem5 $Port53
set structParameter5 [list ]
set structArgument5 [list ]
set NameSpace5 [list ]
set structIsPacked5 "0"
set DataType5 [list "socket_table" "struct socket_table" $structMem5 1 0 $structParameter5 $structArgument5 $NameSpace5 $structIsPacked5]
set Port5 [list $PortName5 $Interface5 $DataType5 $Pointer5 $Dims5 $Const5 $Volatile5 $ArrayOpt5]
lappend PortList $Port5
set PortName6 "numberSockets"
set BitWidth6 "16"
set ArrayOpt6 ""
set Const6 "0"
set Volatile6 "0"
set Pointer6 "2"
set Reference6 "1"
set Dims6 [list 0]
set Interface6 "wire"
set DataType6 "[list ap_uint 16 ]"
set Port6 [list $PortName6 $Interface6 $DataType6 $Pointer6 $Dims6 $Const6 $Volatile6 $ArrayOpt6]
lappend PortList $Port6
set globalAPint "" 
set returnAPInt "" 
set hasCPPAPInt 1 
set argAPInt "" 
set hasCPPAPFix 0 
set hasSCFix 0 
set hasCBool 0 
set hasCPPComplex 0 
set isTemplateTop 0
set hasHalf 0 
set dataPackList ""
set module [list $moduleName $PortList $rawDecl $argAPInt $returnAPInt $dataPackList]
