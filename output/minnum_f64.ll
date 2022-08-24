define double @minnum_f64(double %a, double %b) {
  %v = call double @llvm.minnum.f64(double %a, double %b)
  ret double %v
}

declare double @llvm.minnum.f64(double, double)
