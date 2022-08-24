define double @minimum_f64(double %a, double %b) {
  %v = call double @llvm.minimum.f64(double %a, double %b)
  ret double %v
}

declare double @llvm.minimum.f64(double, double)
