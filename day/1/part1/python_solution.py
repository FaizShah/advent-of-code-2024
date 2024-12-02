#!/usr/bin/env python3
import sys
# import time
#
# t0 = time.perf_counter()
# %%
f = open(sys.argv[1])
# %%
parsed_rows = (map(int, l.split()) for l in f)
sorted_cols = map(sorted, zip(*parsed_rows))
#%%
print(sum(abs(a - b) for a,b in zip(*sorted_cols)))
# t1 = time.perf_counter()
# #%%
# print(f"Part One took {(t1 - t0) * 1000:.3f} ms")