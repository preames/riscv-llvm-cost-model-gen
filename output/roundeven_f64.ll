define double @roundeven_f64(double %a) {
  %v = call double @llvm.roundeven.f64(double %a)
  ret double %v
}

declare double @llvm.roundeven.f64(double)
