define double @exp_f64(double %a) {
  %v = call double @llvm.exp.f64(double %a)
  ret double %v
}

declare double @llvm.exp.f64(double)
