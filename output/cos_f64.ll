define double @cos_f64(double %a) {
  %v = call double @llvm.cos.f64(double %a)
  ret double %v
}

declare double @llvm.cos.f64(double)
