define double @maxnum_f64(double %a, double %b) {
  %v = call double @llvm.maxnum.f64(double %a, double %b)
  ret double %v
}

declare double @llvm.maxnum.f64(double, double)
