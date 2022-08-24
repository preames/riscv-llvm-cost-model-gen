
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


for record in intrinsic_mapping:
    intrinsic = record[0]
    print("define void @%s() {" % (intrinsic))
    for irtype in record[1]:
        print(" " + get_signature(intrinsic, irtype, False))
        pass
    print("  ret void")
    print("}")
    print("")
    pass

for record in intrinsic_mapping:
    intrinsic = record[0]
    for irtype in record[1]:
        print(get_signature(intrinsic, irtype, True))
        pass
    print("")
    pass


