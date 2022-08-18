
unary_intrinsics = [
    "sqrt", "sin", "cos", "exp", "exp2", "log", "log10", "log2", "fabs",
    "floor", "ceil", "trunc",
    "rint", "nearbyint",
    "round", "roundeven"
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

import os
os.mkdir("./output/")
for intrinsic in unary_intrinsics:
    for irtype in types:
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
    for intrinsic in unary_intrinsics:
        for irtype in types:
            mangled = intrinsic_type_mapping[irtype]
            f.write("llc -march=riscv64 -mattr=+v,+f,+d -riscv-v-vector-bits-min=-1 -O3 output/%s_%s.ll\n" % (intrinsic, mangled))
            pass
        pass
    pass
