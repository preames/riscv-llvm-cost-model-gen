define double @exp2_f64(double %a) {
  %v = call double @llvm.exp2.f64(double %a)
  ret double %v
}

declare double @llvm.exp2.f64(double)
