#!/usr/bin/env python3
import sys
import time
t0 = time.perf_counter()
# %%
f = open(sys.argv[1])
# %%
parsed_rows = (map(int, l.split()) for l in f)
sorted_cols = map(sorted, zip(*parsed_rows))
#%%
print(sum(abs(a - b) for a,b in zip(*sorted_cols)))
t1 = time.perf_counter()
print(f"Part One took {(t1 - t0) * 1000:.3f} ms")

#%%
# import sys
# import time
#
# t0 = time.perf_counter()
#
# num_1 = slice(0, 5)
# num_2 = slice(8, 13)
#
# list_1, list_2 = [], []
#
# # .read().splitlines() proved to be slightly faster (0.02 ms) than .splitlines() or looping over f, which surprised me
# with open(sys.argv[1], "r") as f:
#    for line in f.read().splitlines():
#       list_1.append(int(line[num_1]))
#       list_2.append(int(line[num_2]))
#
# list_1.sort()
# list_2.sort()
#
# diff = 0
#
# for num_1, num_2 in zip(list_1, list_2):
#    diff += abs(num_1 - num_2)
#
# t1 = time.perf_counter()
#
# print(f"Part One: {diff}, took {(t1 - t0) * 1000:.3f} ms")
#
# print(diff)