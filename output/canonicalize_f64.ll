define double @canonicalize_f64(double %a) {
  %v = call double @llvm.canonicalize.f64(double %a)
  ret double %v
}

declare double @llvm.canonicalize.f64(double)
