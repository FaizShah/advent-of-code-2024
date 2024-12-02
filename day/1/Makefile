path_from_root = $(shell git rev-parse --show-prefix)
aoc_session_token = $(shell jq -r  ".advent_of_code.session_token" ../../env.json)
solution_p1 = 2769675

TEST:
	ruby -e 'raise "Incorrect Value, Received: #{@r}" unless (@r = `./part1/perl_oneliner.sh input.txt`).to_i == $(solution_p1); puts @r'

input.json:
	curl 'https://adventofcode.com/2024/$(path_from_root)input' -H 'cookie: session=$(aoc_session_token)' -o input.txt