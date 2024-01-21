
set TopModule "backprop"
set ClockPeriod 10
set ClockList ap_clk
set HasVivadoClockPeriod 0
set CombLogicFlag 0
set PipelineFlag 0
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 1
set FftOrFirFlag 0
set NbRWValue 0
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 0
set ResetLevelFlag 1
set ResetStyle control
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 0
set ResetRegisterNum 0
set FsmEncStyle onehot
set MaxFanout 0
set RtlPrefix {}
set RtlSubPrefix backprop_
set ExtraCCFlags {}
set ExtraCLdFlags {}
set SynCheckOptions {}
set PresynOptions {}
set PreprocOptions {}
set SchedOptions {}
set BindOptions {}
set RtlGenOptions {}
set RtlWriterOptions {}
set CbcGenFlag {}
set CasGenFlag {}
set CasMonitorFlag {}
set AutoSimOptions {}
set ExportMCPathFlag 0
set SCTraceFileName mytrace
set SCTraceFileFormat vcd
set SCTraceOption all
set TargetInfo xc7v585t:-ffg1761:-2
set SourceFiles {sc {} c {../../backprop.c ../../local_support.c}}
set SourceFlags {sc {} c {{} {}}}
set DirectiveFile /nfs/home/xushuoxiang/Machsuite_V0.1/backprop/backprop/backprop_syn/solution/solution.directive
set TBFiles {verilog {../../../../common/support.c ../../../../common/support.h ../../../../common/harness.c ../../local_support.c} bc {../../../../common/support.c ../../../../common/support.h ../../../../common/harness.c ../../local_support.c} sc {../../../../common/support.c ../../../../common/support.h ../../../../common/harness.c ../../local_support.c} vhdl {../../../../common/support.c ../../../../common/support.h ../../../../common/harness.c ../../local_support.c} c {} cas {../../../../common/support.c ../../../../common/support.h ../../../../common/harness.c ../../local_support.c}}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set TBInstNames {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {}
set AppFile ../hls.app
set ApsFile solution.aps
set AvePath ../..
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 0
set PlatformFiles {{DefaultPlatform {xilinx/virtex7/virtex7}}}
set HPFPO 0
