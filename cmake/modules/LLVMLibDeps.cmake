set(MSVC_LIB_DEPS_LLVMARMAsmParser LLVMARMCodeGen LLVMARMInfo LLVMMC LLVMMCParser LLVMSupport LLVMTarget)
set(MSVC_LIB_DEPS_LLVMARMAsmPrinter LLVMMC LLVMSupport)
set(MSVC_LIB_DEPS_LLVMARMCodeGen LLVMARMAsmPrinter LLVMARMInfo LLVMAnalysis LLVMAsmPrinter LLVMCodeGen LLVMCore LLVMMC LLVMSelectionDAG LLVMSupport LLVMSystem LLVMTarget)
set(MSVC_LIB_DEPS_LLVMARMDisassembler LLVMARMCodeGen LLVMARMInfo LLVMMC LLVMSupport)
set(MSVC_LIB_DEPS_LLVMARMInfo LLVMSupport)
set(MSVC_LIB_DEPS_LLVMAlphaAsmPrinter LLVMAlphaCodeGen LLVMAlphaInfo LLVMAsmPrinter LLVMCodeGen LLVMCore LLVMMC LLVMSupport LLVMTarget)
set(MSVC_LIB_DEPS_LLVMAlphaCodeGen LLVMAlphaInfo LLVMCodeGen LLVMCore LLVMMC LLVMSelectionDAG LLVMSupport LLVMSystem LLVMTarget)
set(MSVC_LIB_DEPS_LLVMAlphaInfo LLVMSupport)
set(MSVC_LIB_DEPS_LLVMAnalysis LLVMCore LLVMSupport LLVMSystem LLVMTarget)
set(MSVC_LIB_DEPS_LLVMArchive LLVMBitReader LLVMCore LLVMSupport LLVMSystem)
set(MSVC_LIB_DEPS_LLVMAsmParser LLVMCore LLVMSupport)
set(MSVC_LIB_DEPS_LLVMAsmPrinter LLVMAnalysis LLVMCodeGen LLVMCore LLVMMC LLVMMCParser LLVMSupport LLVMSystem LLVMTarget)
set(MSVC_LIB_DEPS_LLVMBitReader LLVMCore LLVMSupport)
set(MSVC_LIB_DEPS_LLVMBitWriter LLVMCore LLVMSupport)
set(MSVC_LIB_DEPS_LLVMBlackfinAsmPrinter LLVMAsmPrinter LLVMBlackfinCodeGen LLVMBlackfinInfo LLVMCodeGen LLVMCore LLVMMC LLVMSupport LLVMTarget)
set(MSVC_LIB_DEPS_LLVMBlackfinCodeGen LLVMBlackfinInfo LLVMCodeGen LLVMCore LLVMMC LLVMSelectionDAG LLVMSupport LLVMTarget)
set(MSVC_LIB_DEPS_LLVMBlackfinInfo LLVMSupport)
set(MSVC_LIB_DEPS_LLVMCBackend LLVMAnalysis LLVMCBackendInfo LLVMCodeGen LLVMCore LLVMMC LLVMScalarOpts LLVMSupport LLVMSystem LLVMTarget LLVMTransformUtils LLVMipa)
set(MSVC_LIB_DEPS_LLVMCBackendInfo LLVMSupport)
set(MSVC_LIB_DEPS_LLVMCellSPUAsmPrinter LLVMAsmPrinter LLVMCellSPUCodeGen LLVMCellSPUInfo LLVMCodeGen LLVMCore LLVMMC LLVMSupport LLVMTarget)
set(MSVC_LIB_DEPS_LLVMCellSPUCodeGen LLVMCellSPUInfo LLVMCodeGen LLVMCore LLVMMC LLVMSelectionDAG LLVMSupport LLVMTarget)
set(MSVC_LIB_DEPS_LLVMCellSPUInfo LLVMSupport)
set(MSVC_LIB_DEPS_LLVMCodeGen LLVMAnalysis LLVMCore LLVMMC LLVMScalarOpts LLVMSupport LLVMSystem LLVMTarget LLVMTransformUtils)
set(MSVC_LIB_DEPS_LLVMCore LLVMSupport LLVMSystem)
set(MSVC_LIB_DEPS_LLVMCppBackend LLVMCore LLVMCppBackendInfo LLVMSupport LLVMTarget)
set(MSVC_LIB_DEPS_LLVMCppBackendInfo LLVMSupport)
set(MSVC_LIB_DEPS_LLVMExecutionEngine LLVMCore LLVMSupport LLVMSystem LLVMTarget)
set(MSVC_LIB_DEPS_LLVMInstCombine LLVMAnalysis LLVMCore LLVMSupport LLVMSystem LLVMTarget LLVMTransformUtils)
set(MSVC_LIB_DEPS_LLVMInstrumentation LLVMAnalysis LLVMCore LLVMSupport LLVMSystem LLVMTransformUtils)
set(MSVC_LIB_DEPS_LLVMInterpreter LLVMCodeGen LLVMCore LLVMExecutionEngine LLVMSupport LLVMSystem LLVMTarget)
set(MSVC_LIB_DEPS_LLVMJIT LLVMCodeGen LLVMCore LLVMExecutionEngine LLVMMC LLVMSupport LLVMSystem LLVMTarget)
set(MSVC_LIB_DEPS_LLVMLinker LLVMArchive LLVMBitReader LLVMCore LLVMSupport LLVMSystem LLVMTransformUtils)
set(MSVC_LIB_DEPS_LLVMMBlazeAsmPrinter LLVMAsmPrinter LLVMCodeGen LLVMCore LLVMMBlazeCodeGen LLVMMBlazeInfo LLVMMC LLVMSupport LLVMTarget)
set(MSVC_LIB_DEPS_LLVMMBlazeCodeGen LLVMCodeGen LLVMCore LLVMMBlazeInfo LLVMMC LLVMSelectionDAG LLVMSupport LLVMSystem LLVMTarget)
set(MSVC_LIB_DEPS_LLVMMBlazeInfo LLVMSupport)
set(MSVC_LIB_DEPS_LLVMMC LLVMSupport LLVMSystem)
set(MSVC_LIB_DEPS_LLVMMCDisassembler LLVMARMAsmParser LLVMARMCodeGen LLVMARMDisassembler LLVMARMInfo LLVMAlphaAsmPrinter LLVMAlphaCodeGen LLVMAlphaInfo LLVMBlackfinAsmPrinter LLVMBlackfinCodeGen LLVMBlackfinInfo LLVMCBackend LLVMCBackendInfo LLVMCellSPUAsmPrinter LLVMCellSPUCodeGen LLVMCellSPUInfo LLVMCppBackend LLVMCppBackendInfo LLVMMBlazeAsmPrinter LLVMMBlazeCodeGen LLVMMBlazeInfo LLVMMC LLVMMCParser LLVMMSP430CodeGen LLVMMSP430Info LLVMMipsAsmPrinter LLVMMipsCodeGen LLVMMipsInfo LLVMPTXAsmPrinter LLVMPTXCodeGen LLVMPTXInfo LLVMPowerPCAsmPrinter LLVMPowerPCCodeGen LLVMPowerPCInfo LLVMSparcAsmPrinter LLVMSparcCodeGen LLVMSparcInfo LLVMSupport LLVMSystem LLVMSystemZAsmPrinter LLVMSystemZCodeGen LLVMSystemZInfo LLVMX86AsmParser LLVMX86CodeGen LLVMX86Disassembler LLVMX86Info LLVMXCoreAsmPrinter LLVMXCoreCodeGen LLVMXCoreInfo)
set(MSVC_LIB_DEPS_LLVMMCParser LLVMMC LLVMSupport)
set(MSVC_LIB_DEPS_LLVMMSP430AsmPrinter LLVMMC LLVMSupport)
set(MSVC_LIB_DEPS_LLVMMSP430CodeGen LLVMAsmPrinter LLVMCodeGen LLVMCore LLVMMC LLVMMSP430AsmPrinter LLVMMSP430Info LLVMSelectionDAG LLVMSupport LLVMSystem LLVMTarget)
set(MSVC_LIB_DEPS_LLVMMSP430Info LLVMSupport)
set(MSVC_LIB_DEPS_LLVMMipsAsmPrinter LLVMAsmPrinter LLVMCodeGen LLVMCore LLVMMC LLVMMipsCodeGen LLVMMipsInfo LLVMSupport LLVMTarget)
set(MSVC_LIB_DEPS_LLVMMipsCodeGen LLVMCodeGen LLVMCore LLVMMC LLVMMipsInfo LLVMSelectionDAG LLVMSupport LLVMSystem LLVMTarget)
set(MSVC_LIB_DEPS_LLVMMipsInfo LLVMSupport)
set(MSVC_LIB_DEPS_LLVMPTXAsmPrinter LLVMAsmPrinter LLVMCodeGen LLVMCore LLVMPTXCodeGen LLVMPTXInfo LLVMSupport)
set(MSVC_LIB_DEPS_LLVMPTXCodeGen LLVMCodeGen LLVMCore LLVMMC LLVMPTXInfo LLVMSelectionDAG LLVMSupport LLVMTarget)
set(MSVC_LIB_DEPS_LLVMPTXInfo LLVMSupport)
set(MSVC_LIB_DEPS_LLVMPowerPCAsmPrinter LLVMAnalysis LLVMAsmPrinter LLVMCodeGen LLVMCore LLVMMC LLVMPowerPCCodeGen LLVMPowerPCInfo LLVMSupport LLVMTarget)
set(MSVC_LIB_DEPS_LLVMPowerPCCodeGen LLVMCodeGen LLVMCore LLVMMC LLVMPowerPCInfo LLVMSelectionDAG LLVMSupport LLVMSystem LLVMTarget)
set(MSVC_LIB_DEPS_LLVMPowerPCInfo LLVMSupport)
set(MSVC_LIB_DEPS_LLVMScalarOpts LLVMAnalysis LLVMCore LLVMInstCombine LLVMSupport LLVMSystem LLVMTarget LLVMTransformUtils)
set(MSVC_LIB_DEPS_LLVMSelectionDAG LLVMAnalysis LLVMCodeGen LLVMCore LLVMMC LLVMSupport LLVMSystem LLVMTarget)
set(MSVC_LIB_DEPS_LLVMSparcAsmPrinter LLVMAsmPrinter LLVMCodeGen LLVMCore LLVMMC LLVMSparcCodeGen LLVMSparcInfo LLVMSupport LLVMTarget)
set(MSVC_LIB_DEPS_LLVMSparcCodeGen LLVMCodeGen LLVMCore LLVMMC LLVMSelectionDAG LLVMSparcInfo LLVMSupport LLVMSystem LLVMTarget)
set(MSVC_LIB_DEPS_LLVMSparcInfo LLVMSupport)
set(MSVC_LIB_DEPS_LLVMSupport LLVMSystem)
set(MSVC_LIB_DEPS_LLVMSystem )
set(MSVC_LIB_DEPS_LLVMSystemZAsmPrinter LLVMAsmPrinter LLVMCodeGen LLVMCore LLVMMC LLVMSupport LLVMSystemZCodeGen LLVMSystemZInfo LLVMTarget)
set(MSVC_LIB_DEPS_LLVMSystemZCodeGen LLVMCodeGen LLVMCore LLVMMC LLVMSelectionDAG LLVMSupport LLVMSystemZInfo LLVMTarget)
set(MSVC_LIB_DEPS_LLVMSystemZInfo LLVMSupport)
set(MSVC_LIB_DEPS_LLVMTarget LLVMCore LLVMMC LLVMSupport)
set(MSVC_LIB_DEPS_LLVMTransformUtils LLVMAnalysis LLVMCore LLVMSupport LLVMSystem LLVMTarget LLVMipa)
set(MSVC_LIB_DEPS_LLVMX86AsmParser LLVMMC LLVMMCParser LLVMSupport LLVMTarget LLVMX86Info)
set(MSVC_LIB_DEPS_LLVMX86AsmPrinter LLVMMC LLVMSupport)
set(MSVC_LIB_DEPS_LLVMX86CodeGen LLVMAnalysis LLVMAsmPrinter LLVMCodeGen LLVMCore LLVMMC LLVMSelectionDAG LLVMSupport LLVMSystem LLVMTarget LLVMX86AsmPrinter LLVMX86Info)
set(MSVC_LIB_DEPS_LLVMX86Disassembler LLVMMC LLVMSupport LLVMX86Info)
set(MSVC_LIB_DEPS_LLVMX86Info LLVMSupport)
set(MSVC_LIB_DEPS_LLVMXCoreAsmPrinter LLVMAsmPrinter LLVMCodeGen LLVMCore LLVMMC LLVMSupport LLVMTarget LLVMXCoreCodeGen LLVMXCoreInfo)
set(MSVC_LIB_DEPS_LLVMXCoreCodeGen LLVMCodeGen LLVMCore LLVMMC LLVMSelectionDAG LLVMSupport LLVMTarget LLVMXCoreInfo)
set(MSVC_LIB_DEPS_LLVMXCoreInfo LLVMSupport)
set(MSVC_LIB_DEPS_LLVMipa LLVMAnalysis LLVMCore LLVMSupport LLVMSystem)
set(MSVC_LIB_DEPS_LLVMipo LLVMAnalysis LLVMCore LLVMScalarOpts LLVMSupport LLVMSystem LLVMTarget LLVMTransformUtils LLVMipa)
