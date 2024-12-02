# Benchmark
## Day 1


```
❯ make perf
Benchmark 1: ./part1/deno_solution.ts ./input.txt
  Time (mean ± σ):      36.1 ms ±   1.7 ms    [User: 19.4 ms, System: 15.7 ms]
  Range (min … max):    32.1 ms …  39.0 ms    72 runs
 
Benchmark 2: ./part1/luajit_solution.lua ./input.txt
  Time (mean ± σ):       4.9 ms ±   0.4 ms    [User: 2.2 ms, System: 2.2 ms]
  Range (min … max):     4.3 ms …   6.7 ms    326 runs
 
  Warning: Command took less than 5 ms to complete. Note that the results might be inaccurate because hyperfine can not calibrate the shell startup time much more precise than this limit. You can try to use the `-N`/`--shell=none` option to disable the shell completely.
 
Benchmark 3: ./part1/rust_solution ./input.txt
  Time (mean ± σ):       2.6 ms ±   0.8 ms    [User: 0.9 ms, System: 1.4 ms]
  Range (min … max):     1.7 ms …   6.0 ms    377 runs
 
  Warning: Command took less than 5 ms to complete. Note that the results might be inaccurate because hyperfine can not calibrate the shell startup time much more precise than this limit. You can try to use the `-N`/`--shell=none` option to disable the shell completely.
 
Benchmark 4: ./part1/jq_solution.sh ./input.txt
  Time (mean ± σ):      10.4 ms ±   0.8 ms    [User: 5.4 ms, System: 4.1 ms]
  Range (min … max):     9.4 ms …  13.9 ms    189 runs
 
Benchmark 5: ./part1/bun_solution.ts ./input.txt
  Time (mean ± σ):      28.2 ms ±   2.3 ms    [User: 14.7 ms, System: 12.0 ms]
  Range (min … max):    24.7 ms …  35.7 ms    91 runs
 
Benchmark 6: ./part1/haskell_solution ./input.txt
  Time (mean ± σ):      17.2 ms ±   0.9 ms    [User: 4.4 ms, System: 3.3 ms]
  Range (min … max):    14.5 ms …  20.4 ms    126 runs
 
Benchmark 7: ./part1/perl_oneliner.sh ./input.txt
  Time (mean ± σ):     140.6 ms ±   1.1 ms    [User: 133.8 ms, System: 5.5 ms]
  Range (min … max):   139.4 ms … 142.8 ms    20 runs
 
Benchmark 8: ./part1/python_solution.py ./input.txt
  Time (mean ± σ):      25.6 ms ±   1.3 ms    [User: 13.1 ms, System: 8.7 ms]
  Range (min … max):    23.3 ms …  28.9 ms    103 runs
 
Benchmark 9: ./part1/ruby_oneliner.sh ./input.txt
  Time (mean ± σ):      54.2 ms ±   1.4 ms    [User: 31.5 ms, System: 17.8 ms]
  Range (min … max):    51.6 ms …  57.4 ms    48 runs
 
Benchmark 10: ./part1/numpy_solution.py ./input.txt
  Time (mean ± σ):      59.0 ms ±   2.4 ms    [User: 41.2 ms, System: 13.4 ms]
  Range (min … max):    55.6 ms …  68.0 ms    50 runs
 
Benchmark 11: ./part1/polars_solution.py ./input.txt
  Time (mean ± σ):      76.7 ms ±   2.7 ms    [User: 54.5 ms, System: 20.2 ms]
  Range (min … max):    73.1 ms …  82.5 ms    37 runs
 
Summary
  ./part1/rust_solution ./input.txt ran
    1.85 ± 0.61 times faster than ./part1/luajit_solution.lua ./input.txt
    3.97 ± 1.30 times faster than ./part1/jq_solution.sh ./input.txt
    6.53 ± 2.10 times faster than ./part1/haskell_solution ./input.txt
    9.73 ± 3.12 times faster than ./part1/python_solution.py ./input.txt
   10.72 ± 3.50 times faster than ./part1/bun_solution.ts ./input.txt
   13.75 ± 4.41 times faster than ./part1/deno_solution.ts ./input.txt
   20.63 ± 6.56 times faster than ./part1/ruby_oneliner.sh ./input.txt
   22.46 ± 7.17 times faster than ./part1/numpy_solution.py ./input.txt
   29.20 ± 9.31 times faster than ./part1/polars_solution.py ./input.txt
   53.52 ± 16.96 times faster than ./part1/perl_oneliner.sh ./input.txt
```