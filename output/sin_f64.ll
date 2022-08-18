define double @sin_f64(double %a) {
  %v = call double @llvm.sin.f64(double %a)
  ret double %v
}

declare double @llvm.sin.f64(double)
