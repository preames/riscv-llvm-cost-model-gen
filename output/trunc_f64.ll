define double @trunc_f64(double %a) {
  %v = call double @llvm.trunc.f64(double %a)
  ret double %v
}

declare double @llvm.trunc.f64(double)
