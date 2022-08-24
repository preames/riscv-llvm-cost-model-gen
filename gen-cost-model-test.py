
from common import *

def get_signature(intrinsic, irtype, isdecl):
    mangled = intrinsic_type_mapping[irtype]
    if intrinsic in unary_float or intrinsic in unary_integer:
        if isdecl:
            return "declare %s @llvm.%s.%s(%s)" % (irtype, intrinsic, mangled, irtype)
        else:
            return "call %s @llvm.%s.%s(%s undef)" % (irtype, intrinsic, mangled, irtype)
    elif intrinsic in binary_float or intrinsic in binary_integer:
        if isdecl:
            return "declare %s @llvm.%s.%s(%s, %s)" % (irtype, intrinsic, mangled, irtype, irtype)
        else:
            return "call %s @llvm.%s.%s(%s undef, %s undef)" % (irtype, intrinsic, mangled, irtype, irtype)
    else:
        assert False
        pass
    pass

for intrinsic in unary_float:
    print("define void @%s() {" % (intrinsic))

    for irtype in float_types:
        print(" " + get_signature(intrinsic, irtype, False))
        pass
    print("  ret void")
    print("}")
    print("")
    pass

for intrinsic in unary_integer:
    print("define void @%s() {" % (intrinsic))
    for irtype in integer_types:
        if intrinsic == "bswap" and "i8" in irtype:
            continue
        print(" " + get_signature(intrinsic, irtype, False))
        pass
    print("  ret void")
    print("}")
    print("")
    pass

for intrinsic in binary_float:
    print("define void @%s() {" % (intrinsic))
    for irtype in float_types:
        mangled = intrinsic_type_mapping[irtype]
        s = "  call %s @llvm.%s.%s(%s undef, %s undef)" % (irtype, intrinsic, mangled, irtype, irtype)
        print(s)
        pass
    print("  ret void")
    print("}")
    print("")
    pass

for intrinsic in binary_integer:
    print("define void @%s() {" % (intrinsic))
    for irtype in integer_types:
        print(" " + get_signature(intrinsic, irtype, False))
        pass
    print("  ret void")
    print("}")
    print("")
    pass


for intrinsic in unary_float:
    for irtype in float_types:
        print(get_signature(intrinsic, irtype, True))
        pass
    print("")
    pass

for intrinsic in unary_integer:
    for irtype in integer_types:
        print(get_signature(intrinsic, irtype, True))
        pass
    print("")
    pass

for intrinsic in binary_float:
    for irtype in float_types:
        print(get_signature(intrinsic, irtype, True))
        pass
    print("")
    pass

for intrinsic in binary_integer:
    for irtype in integer_types:
        print(get_signature(intrinsic, irtype, True))
        pass
    print("")
    pass


