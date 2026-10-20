define i32 @f(i32 %x) {
  %a = add i32 %x, 0
  ret i32 %a
}

define float @trigger(float %x) {
entry:
  %mul = fmul float %x, 2.000000e+00
  %add = fadd reassoc nsz float %mul, %x
  ret float %add
}

; i32 %x:simplifyAddInst,visitAdd(BinaryOperator &),InstructionSimplify.cpp
; float 3.000000e+00:ConstantFoldBinaryOpOperands,visitFAdd