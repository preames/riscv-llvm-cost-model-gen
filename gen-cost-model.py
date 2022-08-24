

from common import *

import os
if not os.path.exists("./output/"):
    os.mkdir("./output/")

def get_signature(intrinsic, irtype, isdecl):
    mangled = intrinsic_type_mapping[irtype]
    if intrinsic in unary_float or intrinsic in unary_integer:
        if isdecl:
            return "declare %s @llvm.%s.%s(%s)" % (irtype, intrinsic, mangled, irtype)
        else:
            return "call %s @llvm.%s.%s(%s %%a)" % (irtype, intrinsic, mangled, irtype)
    elif intrinsic in binary_float or intrinsic in binary_integer:
        if isdecl:
            return "declare %s @llvm.%s.%s(%s, %s)" % (irtype, intrinsic, mangled, irtype, irtype)
        else:
            return "call %s @llvm.%s.%s(%s %%a, %s %%b)" % (irtype, intrinsic, mangled, irtype, irtype)
    else:
        assert False
        pass
    pass

    
for record in intrinsic_mapping:
    intrinsic = record[0]
    for irtype in record[1]:
        mangled = intrinsic_type_mapping[irtype]
        with open("output/%s_%s.ll" % (intrinsic, mangled), "w") as f:   
            if intrinsic in unary_float or intrinsic in unary_integer:
                f.write("define %s @%s_%s(%s %%a) {\n" % (irtype, intrinsic, mangled, irtype))
            elif intrinsic in binary_float or intrinsic in binary_integer:
                    f.write("define %s @%s_%s(%s %%a, %s %%b) {\n" % (irtype, intrinsic, mangled, irtype, irtype))
            else:
                assert False
                pass
            s = "  %v = " + get_signature(intrinsic, irtype, False) + "\n"
            f.write(s)
            f.write("  ret %s %%v\n" % irtype)
            f.write("}\n")
            f.write("\n")
            f.write(get_signature(intrinsic, irtype, True) + "\n")
            pass
        pass
    pass

with open("tmp.sh", "w") as f:   
    for record in intrinsic_mapping:
        intrinsic = record[0]
        for irtype in record[1]:
            mangled = intrinsic_type_mapping[irtype]
            f.write("llc -march=riscv64 -mattr=+v,+f,+d -riscv-v-vector-bits-min=-1 -O3 output/%s_%s.ll\n" % (intrinsic, mangled))
            pass
        pass
    pass
