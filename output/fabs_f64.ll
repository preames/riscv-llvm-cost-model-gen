define double @fabs_f64(double %a) {
  %v = call double @llvm.fabs.f64(double %a)
  ret double %v
}

declare double @llvm.fabs.f64(double)
