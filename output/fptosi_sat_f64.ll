define double @fptosi_sat_f64(double %a) {
  %v = call double @llvm.fptosi_sat.f64(double %a)
  ret double %v
}

declare double @llvm.fptosi_sat.f64(double)
