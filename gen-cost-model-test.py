
from common import *

for intrinsic in unary_float:
    print("define void @%s() {" % (intrinsic))

    for irtype in float_types:
        mangled = intrinsic_type_mapping[irtype]
        s = "  call %s @llvm.%s.%s(%s undef)" % (irtype, intrinsic, mangled, irtype)
        print(s)
        pass
    print("  ret void")
    print("}")
    print("")
    pass

for intrinsic in unary_integer:
    print("define void @%s() {" % (intrinsic))

    for irtype in integer_types:
        mangled = intrinsic_type_mapping[irtype]
        s = "  call %s @llvm.%s.%s(%s undef)" % (irtype, intrinsic, mangled, irtype)
        print(s)
        pass
    print("  ret void")
    print("}")
    print("")
    pass

for intrinsic in unary_float:
    for irtype in float_types:
        mangled = intrinsic_type_mapping[irtype]
        s = "declare %s @llvm.%s.%s(%s)" % (irtype, intrinsic, mangled, irtype)
        print(s)
        pass
    print("")
    pass

for intrinsic in unary_integer:
    for irtype in integer_types:
        mangled = intrinsic_type_mapping[irtype]
        s = "declare %s @llvm.%s.%s(%s)" % (irtype, intrinsic, mangled, irtype)
        print(s)
        pass
    print("")
    pass


