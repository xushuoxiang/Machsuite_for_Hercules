set lang "C"
set moduleName "bfs"
set moduleIsExternC "1"
set rawDecl ""
set globalVariable ""
set PortList ""
set PortName "nodes"
set BitWidth "128"
set ArrayOpt ""
set Const "0"
set Volatile "1"
set Pointer "1"
set Reference "0"
set Dims [list 0]
set Interface "wire"
set DataType "void"
set Port [list $PortName $Interface $DataType $Pointer $Dims $Const    $Volatile $ArrayOpt]
lappend PortList $Port
set PortName "edges"
set BitWidth "64"
set ArrayOpt ""
set Const "0"
set Volatile "1"
set Pointer "1"
set Reference "0"
set Dims [list 0]
set Interface "wire"
set DataType "void"
set Port [list $PortName $Interface $DataType $Pointer $Dims $Const    $Volatile $ArrayOpt]
lappend PortList $Port
set PortName "starting_node"
set BitWidth "64"
set ArrayOpt ""
set Const "0"
set Volatile "0"
set Pointer "0"
set Reference "0"
set Dims [list 0]
set Interface "wire"
set DataType "long long"
set Port [list $PortName $Interface $DataType $Pointer $Dims $Const    $Volatile $ArrayOpt]
lappend PortList $Port
set PortName "level"
set BitWidth "8"
set ArrayOpt ""
set Const "0"
set Volatile "1"
set Pointer "1"
set Reference "0"
set Dims [list 0]
set Interface "wire"
set DataType "void"
set Port [list $PortName $Interface $DataType $Pointer $Dims $Const    $Volatile $ArrayOpt]
lappend PortList $Port
set PortName "level_counts"
set BitWidth "64"
set ArrayOpt ""
set Const "0"
set Volatile "1"
set Pointer "1"
set Reference "0"
set Dims [list 0]
set Interface "wire"
set DataType "void"
set Port [list $PortName $Interface $DataType $Pointer $Dims $Const    $Volatile $ArrayOpt]
lappend PortList $Port
set PortName "checkdata"
set BitWidth "128"
set ArrayOpt ""
set Const "0"
set Volatile "1"
set Pointer "1"
set Reference "0"
set Dims [list 0]
set Interface "wire"
set DataType "void"
set Port [list $PortName $Interface $DataType $Pointer $Dims $Const    $Volatile $ArrayOpt]
lappend PortList $Port
set PortName "hercules_buffer_size"
set BitWidth "32"
set ArrayOpt ""
set Const "0"
set Volatile "1"
set Pointer "1"
set Reference "0"
set Dims [list 0]
set Interface "wire"
set DataType "void"
set Port [list $PortName $Interface $DataType $Pointer $Dims $Const    $Volatile $ArrayOpt]
lappend PortList $Port
set globalAPint "" 
set returnAPInt "" 
set hasCPPAPInt 0 
set argAPInt "" 
set hasCPPAPFix 0 
set hasSCFix 0 
set hasCBool 0 
set hasCPPComplex 0 
set isTemplateTop 0
set hasHalf 0 
set dataPackList ""
set module [list $moduleName $PortList $rawDecl $argAPInt $returnAPInt $dataPackList]