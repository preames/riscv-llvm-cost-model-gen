define double @sqrt_f64(double %a) {
  %v = call double @llvm.sqrt.f64(double %a)
  ret double %v
}

declare double @llvm.sqrt.f64(double)
