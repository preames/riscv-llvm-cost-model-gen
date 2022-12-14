unary_float = [
    "sqrt", "sin", "cos", "exp", "exp2", "log", "log10", "log2", "fabs",
    "floor", "ceil", "trunc",
    "rint", "nearbyint",
    "round", "roundeven",
    "canonicalize",   "fptosi_sat",
    "fptoui_sat",
]

unary_integer = [
    "bswap",
    "bitreverse",
    "ctpop",
]

binary_integer = [
  "smax",
  "smin",
  "umax",
  "umin",
  "sadd_sat",
  "ssub_sat",
  "uadd_sat",
  "usub_sat",
]

binary_float = [
  "minnum",
  "maxnum",
  "minimum",
  "maximum",
  "copysign",
  "pow",
]

oddball = [
  "abs",
  "fshl",
  "fshr",
  "smul_fix",
  "smul_fix_sat",
  "umul_fix",
  "umul_fix_sat",
  "fma",
  "fmuladd",
  "powi",
  "ctlz",
  "cttz",
]


float_types = [
    "float", "<2 x float>", "<4 x float>", "<8 x float>", "<16 x float>",
    "<vscale x 2 x float>", "<vscale x 4 x float>",
    "<vscale x 8 x float>", "<vscale x 16 x float>",
    "double", "<2 x double>", "<4 x double>",
    "<8 x double>", "<16 x double>",
    "<vscale x 1 x double>", "<vscale x 2 x double>",
    "<vscale x 4 x double>", "<vscale x 8 x double>"]

integer_types = [
    "i8",
    "<2 x i8>",
    "<4 x i8>",
    "<8 x i8>",
    "<16 x i8>",
    "<vscale x 2 x i8>",
    "<vscale x 4 x i8>",
    "<vscale x 8 x i8>",
    "<vscale x 16 x i8>",
    "i16",
    "<2 x i16>",
    "<4 x i16>",
    "<8 x i16>",
    "<16 x i16>",
    "<vscale x 2 x i16>",
    "<vscale x 4 x i16>",
    "<vscale x 8 x i16>",
    "<vscale x 16 x i16>",
    "i32",
    "<2 x i32>",
    "<4 x i32>",
    "<8 x i32>",
    "<16 x i32>",
    "<vscale x 2 x i32>",
    "<vscale x 4 x i32>",
    "<vscale x 8 x i32>",
    "<vscale x 16 x i32>",
    "i64",
    "<2 x i64>",
    "<4 x i64>",
    "<8 x i64>",
    "<16 x i64>",
    "<vscale x 2 x i64>",
    "<vscale x 4 x i64>",
    "<vscale x 8 x i64>",
    ]


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
    "<vscale x 16 x double>":"nvx16f64",
    "i8":"i8",
    "<2 x i8>":"v2i8",
    "<4 x i8>":"v4i8",
    "<8 x i8>":"v8i8",
    "<16 x i8>":"v16i8",
    "<vscale x 2 x i8>":"nvx2i8",
    "<vscale x 4 x i8>":"nvx4i8",
    "<vscale x 8 x i8>":"nvx8i8",
    "<vscale x 16 x i8>":"nvx16i8",
    "i16":"i16",
    "<2 x i16>":"v2i16",
    "<4 x i16>":"v4i16",
    "<8 x i16>":"v8i16",
    "<16 x i16>":"v16i16",
    "<vscale x 2 x i16>":"nvx2i16",
    "<vscale x 4 x i16>":"nvx4i16",
    "<vscale x 8 x i16>":"nvx8i16",
    "<vscale x 16 x i16>":"nvx16i16",
    "i32":"i32",
    "<2 x i32>":"v2i32",
    "<4 x i32>":"v4i32",
    "<8 x i32>":"v8i32",
    "<16 x i32>":"v16i32",
    "<vscale x 2 x i32>":"nvx2i32",
    "<vscale x 4 x i32>":"nvx4i32",
    "<vscale x 8 x i32>":"nvx8i32",
    "<vscale x 16 x i32>":"nvx16i32",
    "i64":"i64",
    "<2 x i64>":"v2i64",
    "<4 x i64>":"v4i64",
    "<8 x i64>":"v8i64",
    "<16 x i64>":"v16i64",
    "<vscale x 2 x i64>":"nvx2i64",
    "<vscale x 4 x i64>":"nvx4i64",
    "<vscale x 8 x i64>":"nvx8i64",
    "<vscale x 16 x i64>":"nvx16i64",
    }

def build_records():
    result = []
    for intrinsic in unary_float:
        result.append([intrinsic, float_types])
        pass
    for intrinsic in unary_integer:
        if intrinsic == "bswap":
            filtered = []
            for irtype in integer_types:
                if "i8" in irtype:
                    continue
                filtered.append(irtype)
                pass
            result.append([intrinsic, filtered])
            continue
        result.append([intrinsic, integer_types])
        pass
    for intrinsic in binary_float:
        result.append([intrinsic, float_types])
        pass
    for intrinsic in binary_integer:
        result.append([intrinsic, integer_types])
        pass
    return result

intrinsic_mapping = build_records()
