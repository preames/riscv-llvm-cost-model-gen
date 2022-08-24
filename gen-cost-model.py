

from common import *

import os
if not os.path.exists("./output/"):
    os.mkdir("./output/")
for intrinsic in unary_float:
    for irtype in float_types:
        mangled = intrinsic_type_mapping[irtype]
        with open("output/%s_%s.ll" % (intrinsic, mangled), "w") as f:   
            f.write("define %s @%s_%s(%s %%a) {\n" % (irtype, intrinsic, mangled, irtype))
            s = "  %%v = call %s @llvm.%s.%s(%s %%a)\n" % (irtype, intrinsic, mangled, irtype)
            f.write(s)
            f.write("  ret %s %%v\n" % irtype)
            f.write("}\n")
            f.write("\n")
            s = "declare %s @llvm.%s.%s(%s)\n" % (irtype, intrinsic, mangled, irtype)
            f.write(s)
            pass
        pass
    pass

with open("tmp.sh", "w") as f:   
    for intrinsic in unary_float:
        for irtype in float_types:
            mangled = intrinsic_type_mapping[irtype]
            f.write("llc -march=riscv64 -mattr=+v,+f,+d -riscv-v-vector-bits-min=-1 -O3 output/%s_%s.ll\n" % (intrinsic, mangled))
            pass
        pass
    pass
