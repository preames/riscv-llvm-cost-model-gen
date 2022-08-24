define double @copysign_f64(double %a, double %b) {
  %v = call double @llvm.copysign.f64(double %a, double %b)
  ret double %v
}

declare double @llvm.copysign.f64(double, double)
