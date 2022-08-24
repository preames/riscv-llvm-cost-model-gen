
from common import *

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
for intrinsic in unary_float:
    for irtype in float_types:
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
