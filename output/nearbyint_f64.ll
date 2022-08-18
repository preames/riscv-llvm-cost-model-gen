define double @nearbyint_f64(double %a) {
  %v = call double @llvm.nearbyint.f64(double %a)
  ret double %v
}

declare double @llvm.nearbyint.f64(double)
