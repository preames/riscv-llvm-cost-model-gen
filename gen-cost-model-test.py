
unary_intrinsics = [
    "sqrt"
]


types = ["float", "<2 x float>", "<4 x float>", "<8 x float>", "<16 x float>",
         "<vscale x 2 x float>", "<vscale x 4 x float>",
         "<vscale x 8 x float>", "<vscale x 16 x float>",
         "double", "<2 x double>", "<4 x double>",
         "<8 x double>", "<16 x double>",
         "<vscale x 1 x double>", "<vscale x 2 x double>",
         "<vscale x 4 x double>", "<vscale x 8 x double>"]

intrinsic_type_mapping = {
    "float":"f32",
    "<2 x float>":"v2f32",
    "<4 x float>":"v4f32",
    "<8 x float>":"v8f32",
    "<16 x float>":"v16f32",
    "<vscale x 2 x float>":"nvx2f32",
    "<vscale x 4 x float>":"nvx4f32",
    "<vscale x 8 x float>":"nvx8f32",
    "<vscale x 16 x float>":"nvx16f32",
    "double":"f64",
    "<2 x double>":"v2f64",
    "<4 x double>":"v4f64",
    "<8 x double>":"v8f64",
    "<16 x double>":"v16f64",
    "<vscale x 1 x double>":"nvx1f64",
    "<vscale x 2 x double>":"nvx2f64",
    "<vscale x 4 x double>":"nvx4f64",
    "<vscale x 8 x double>":"nvx8f64",
    "<vscale x 16 x double>":"nvx16f64"
    }

for intrinsic in unary_intrinsics:
    print("define void @%s() {" % (intrinsic))

    for irtype in types:
        mangled = intrinsic_type_mapping[irtype]
        s = "  call %s @llvm.%s.%s(%s undef)" % (irtype, intrinsic, mangled, irtype)
        print(s)
        pass
    print("  ret void")
    print("}")
    print("")
    pass

for intrinsic in unary_intrinsics:
    for irtype in types:
        mangled = intrinsic_type_mapping[irtype]
        s = "declare %s @llvm.%s.%s(%s)" % (irtype, intrinsic, mangled, irtype)
        print(s)
        pass
    print("")
    pass


