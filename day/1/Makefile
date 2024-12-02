path_from_root = $(shell git rev-parse --show-prefix)
aoc_session_token = $(shell jq -r  ".advent_of_code.session_token" ../../env.json)
solution_p1 = 2769675

command = ./part1/perl_oneliner.sh input.txt

./part1/rust_solution: ./part1/compiled/rust_solution.rs
	rustc -C opt-level=3 -o $@ $<

./part1/haskell_solution: ./part1/compiled/haskell_solution.hs
	ghc -O2 -no-keep-o-files -no-keep-hi-files -o $@ $<

.PHONY: perf
perf: ./part1/rust_solution ./part1/haskell_solution
	find ./part1 -type f -depth -maxdepth 1 | awk '{ print "\"" $$0 " ./input.txt\""}' | xargs hyperfine --warmup 3

.PHONY: test
TEST:
	ruby -e 'raise "Incorrect Value, Received: #{@r}" unless (@r = `$(command)`).to_i == $(solution_p1); puts @r'
	hyperfine "$(command)"

input.json:
	curl 'https://adventofcode.com/2024/$(path_from_root)input' -H 'cookie: session=$(aoc_session_token)' -o input.txt