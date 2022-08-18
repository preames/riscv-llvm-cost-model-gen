define double @ceil_f64(double %a) {
  %v = call double @llvm.ceil.f64(double %a)
  ret double %v
}

declare double @llvm.ceil.f64(double)
