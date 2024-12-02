# Benchmark
## Day 1


```
❯ make perf
Benchmark 1: ./luajit_solution.lua ../input.txt
  Time (mean ± σ):       4.7 ms ±   0.6 ms    [User: 2.1 ms, System: 2.1 ms]
  Range (min … max):     4.0 ms …   8.0 ms    338 runs
 
  Warning: Command took less than 5 ms to complete. Note that the results might be inaccurate because hyperfine can not calibrate the shell startup time much more precise than this limit. You can try to use the `-N`/`--shell=none` option to disable the shell completely.
 
Benchmark 2: ./jq_solution.sh ../input.txt
  Time (mean ± σ):       9.9 ms ±   0.7 ms    [User: 5.3 ms, System: 3.8 ms]
  Range (min … max):     9.0 ms …  13.6 ms    196 runs
 
Benchmark 3: ./perl_oneliner.sh ../input.txt
  Time (mean ± σ):     140.3 ms ±   0.9 ms    [User: 134.3 ms, System: 4.8 ms]
  Range (min … max):   139.1 ms … 143.1 ms    20 runs
 
Benchmark 4: ./python_solution.py ../input.txt
  Time (mean ± σ):      25.0 ms ±   1.6 ms    [User: 13.4 ms, System: 8.8 ms]
  Range (min … max):    22.1 ms …  29.2 ms    104 runs
 
Benchmark 5: ./ruby_oneliner.sh ../input.txt
  Time (mean ± σ):      54.5 ms ±   1.7 ms    [User: 31.7 ms, System: 17.9 ms]
  Range (min … max):    52.1 ms …  58.0 ms    52 runs
 
Benchmark 6: ./numpy_solution.py ../input.txt
  Time (mean ± σ):      57.6 ms ±   1.8 ms    [User: 41.1 ms, System: 13.2 ms]
  Range (min … max):    54.8 ms …  62.6 ms    48 runs
 
Benchmark 7: ./polars_solution.py ../input.txt
  Time (mean ± σ):      76.5 ms ±   2.6 ms    [User: 54.9 ms, System: 20.4 ms]
  Range (min … max):    72.2 ms …  81.4 ms    38 runs
 
Summary
  ./luajit_solution.lua ../input.txt ran
    2.09 ± 0.30 times faster than ./jq_solution.sh ../input.txt
    5.29 ± 0.74 times faster than ./python_solution.py ../input.txt
   11.53 ± 1.48 times faster than ./ruby_oneliner.sh ../input.txt
   12.20 ± 1.57 times faster than ./numpy_solution.py ../input.txt
   16.20 ± 2.10 times faster than ./polars_solution.py ../input.txt
   29.70 ± 3.71 times faster than ./perl_oneliner.sh ../input.txt
```