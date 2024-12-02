#!/usr/bin/env python3
import numpy as np
import sys
#%%
data = np.loadtxt(sys.argv[1])
#%%
result = np.sum(np.abs(np.sort(data[:, 0]) - np.sort(data[:, 1])))
#%%
print(int(result))
