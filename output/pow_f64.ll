define double @pow_f64(double %a, double %b) {
  %v = call double @llvm.pow.f64(double %a, double %b)
  ret double %v
}

declare double @llvm.pow.f64(double, double)
