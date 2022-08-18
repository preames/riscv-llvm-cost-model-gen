define double @log10_f64(double %a) {
  %v = call double @llvm.log10.f64(double %a)
  ret double %v
}

declare double @llvm.log10.f64(double)
