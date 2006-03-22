//===-- PPCISelLowering.h - PPC32 DAG Lowering Interface --------*- C++ -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file was developed by Chris Lattner and is distributed under
// the University of Illinois Open Source License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file defines the interfaces that PPC uses to lower LLVM code into a
// selection DAG.
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_TARGET_POWERPC_PPC32ISELLOWERING_H
#define LLVM_TARGET_POWERPC_PPC32ISELLOWERING_H

#include "llvm/Target/TargetLowering.h"
#include "llvm/CodeGen/SelectionDAG.h"
#include "PPC.h"

namespace llvm {
  namespace PPCISD {
    enum NodeType {
      // Start the numbering where the builting ops and target ops leave off.
      FIRST_NUMBER = ISD::BUILTIN_OP_END+PPC::INSTRUCTION_LIST_END,

      /// FSEL - Traditional three-operand fsel node.
      ///
      FSEL,
      
      /// FCFID - The FCFID instruction, taking an f64 operand and producing
      /// and f64 value containing the FP representation of the integer that
      /// was temporarily in the f64 operand.
      FCFID,
      
      /// FCTI[D,W]Z - The FCTIDZ and FCTIWZ instructions, taking an f32 or f64 
      /// operand, producing an f64 value containing the integer representation
      /// of that FP value.
      FCTIDZ, FCTIWZ,
      
      /// STFIWX - The STFIWX instruction.  The first operand is an input token
      /// chain, then an f64 value to store, then an address to store it to,
      /// then a SRCVALUE for the address.
      STFIWX,
      
      // VMADDFP, VNMSUBFP - The VMADDFP and VNMSUBFP instructions, taking
      // three v4f32 operands and producing a v4f32 result.
      VMADDFP, VNMSUBFP,
      
      /// LVE_X - The PPC LVE*X instructions.  The size of the element loaded is
      /// the size of the element type of the vector result.  The element loaded
      /// depends on the alignment of the input pointer.
      ///
      /// The first operand is a token chain, the second is the address to load
      /// the third is the SRCVALUE node.
      LVE_X,
      
      /// VPERM - The PPC VPERM Instruction.
      ///
      VPERM,
      
      /// Hi/Lo - These represent the high and low 16-bit parts of a global
      /// address respectively.  These nodes have two operands, the first of
      /// which must be a TargetGlobalAddress, and the second of which must be a
      /// Constant.  Selected naively, these turn into 'lis G+C' and 'li G+C',
      /// though these are usually folded into other nodes.
      Hi, Lo,
      
      /// GlobalBaseReg - On Darwin, this node represents the result of the mflr
      /// at function entry, used for PIC code.
      GlobalBaseReg,
      
      /// These nodes represent the 32-bit PPC shifts that operate on 6-bit
      /// shift amounts.  These nodes are generated by the multi-precision shift
      /// code.
      SRL, SRA, SHL,
      
      /// EXTSW_32 - This is the EXTSW instruction for use with "32-bit"
      /// registers.
      EXTSW_32,

      /// STD_32 - This is the STD instruction for use with "32-bit" registers.
      STD_32,
      
      /// CALL - A function call.
      CALL,
      
      /// Return with a flag operand, matched by 'blr'
      RET_FLAG,
    };
  }

  /// Define some predicates that are used for node matching.
  namespace PPC {
    /// isSplatShuffleMask - Return true if the specified VECTOR_SHUFFLE operand
    /// specifies a splat of a single element that is suitable for input to
    /// VSPLTB/VSPLTH/VSPLTW.
    bool isSplatShuffleMask(SDNode *N);
    
    /// getVSPLTImmediate - Return the appropriate VSPLT* immediate to splat the
    /// specified isSplatShuffleMask VECTOR_SHUFFLE mask.
    unsigned getVSPLTImmediate(SDNode *N);
  }
  
  class PPCTargetLowering : public TargetLowering {
    int VarArgsFrameIndex;            // FrameIndex for start of varargs area.
    int ReturnAddrIndex;              // FrameIndex for return slot.
  public:
    PPCTargetLowering(TargetMachine &TM);
    
    /// getTargetNodeName() - This method returns the name of a target specific
    /// DAG node.
    virtual const char *getTargetNodeName(unsigned Opcode) const;
    
    /// LowerOperation - Provide custom lowering hooks for some operations.
    ///
    virtual SDOperand LowerOperation(SDOperand Op, SelectionDAG &DAG);
    
    virtual SDOperand PerformDAGCombine(SDNode *N, DAGCombinerInfo &DCI) const;

    /// LowerArguments - This hook must be implemented to indicate how we should
    /// lower the arguments for the specified function, into the specified DAG.
    virtual std::vector<SDOperand>
      LowerArguments(Function &F, SelectionDAG &DAG);
    
    /// LowerCallTo - This hook lowers an abstract call to a function into an
    /// actual call.
    virtual std::pair<SDOperand, SDOperand>
      LowerCallTo(SDOperand Chain, const Type *RetTy, bool isVarArg,
                  unsigned CC,
                  bool isTailCall, SDOperand Callee, ArgListTy &Args,
                  SelectionDAG &DAG);

    virtual MachineBasicBlock *InsertAtEndOfBasicBlock(MachineInstr *MI,
                                                       MachineBasicBlock *MBB);
    
    ConstraintType getConstraintType(char ConstraintLetter) const;
    std::vector<unsigned> 
      getRegClassForInlineAsmConstraint(const std::string &Constraint,
                                        MVT::ValueType VT) const;
    bool isOperandValidForConstraint(SDOperand Op, char ConstraintLetter);

    /// isLegalAddressImmediate - Return true if the integer value can be used
    /// as the offset of the target addressing mode.
    virtual bool isLegalAddressImmediate(int64_t V) const;
  };
}

#endif   // LLVM_TARGET_POWERPC_PPC32ISELLOWERING_H
