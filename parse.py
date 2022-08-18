
unary_intrinsics = [
    #"sqrt", "sin", "cos", "exp", "exp2", "log", "log10", "log2", "fabs",
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

def cost_one(F):
    count = 0
    saw_vsetvli = False
    saw_tail = False
    for line in f.readlines():
        l = line.strip()
        if l == "" or l.startswith(".") or l.startswith("#"):
            continue
        if "vset" in l and not saw_vsetvli:
            saw_vsetvli = True
            continue
        if "call" in l:
            return None
        #print(l)
        if "tail" in l:
            saw_tail = True
            pass
        count += 1
        pass
    if saw_tail:
        # ignore function label
        return count - 1
    # ignore function label and ret
    return count - 2

import os
import sys

if len(sys.argv) > 1:
    for asmname in sys.argv[1:]:
        with open(asmname, "r") as f:
            cost = cost_one(f)
            if cost != None:
                print("%s %d" % (asmname, cost))
            else:
                print("%s None" % asmname)
                pass
            pass

        pass
    sys.exit(0)

print ("static const CostTblEntry VectorIntrinsicCostTable[]{")
for intrinsic in unary_intrinsics:
    for irtype in types:
        mangled = intrinsic_type_mapping[irtype]
        mvt = "MVT::" + mangled.replace("vx", "xv")
        asmname = "output/%s_%s.s" % (intrinsic, mangled)
        if not os.path.exists(asmname):
            #print("   // %s_%s = CRASH" % (intrinsic, mvt))
            continue

        with open(asmname, "r") as f:
            cost = cost_one(f)
            if cost:
                print("   {Intrinsic::%s, %s, %d}," % (intrinsic, mvt, cost))
            else:
                #print("   // %s_%s = None" % (intrinsic, mvt))
                pass
            pass
        pass
    pass
print( "};")
