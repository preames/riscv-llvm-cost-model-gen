define double @log2_f64(double %a) {
  %v = call double @llvm.log2.f64(double %a)
  ret double %v
}

declare double @llvm.log2.f64(double)
