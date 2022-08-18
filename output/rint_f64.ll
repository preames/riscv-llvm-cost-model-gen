define double @rint_f64(double %a) {
  %v = call double @llvm.rint.f64(double %a)
  ret double %v
}

declare double @llvm.rint.f64(double)
