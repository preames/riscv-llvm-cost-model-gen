define double @maximum_f64(double %a, double %b) {
  %v = call double @llvm.maximum.f64(double %a, double %b)
  ret double %v
}

declare double @llvm.maximum.f64(double, double)
