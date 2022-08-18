define double @round_f64(double %a) {
  %v = call double @llvm.round.f64(double %a)
  ret double %v
}

declare double @llvm.round.f64(double)
