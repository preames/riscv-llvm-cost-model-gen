define double @floor_f64(double %a) {
  %v = call double @llvm.floor.f64(double %a)
  ret double %v
}

declare double @llvm.floor.f64(double)
