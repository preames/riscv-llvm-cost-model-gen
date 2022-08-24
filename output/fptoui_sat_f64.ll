define double @fptoui_sat_f64(double %a) {
  %v = call double @llvm.fptoui_sat.f64(double %a)
  ret double %v
}

declare double @llvm.fptoui_sat.f64(double)
