define double @log_f64(double %a) {
  %v = call double @llvm.log.f64(double %a)
  ret double %v
}

declare double @llvm.log.f64(double)
