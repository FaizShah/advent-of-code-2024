path_from_root = $(shell git rev-parse --show-prefix)
aoc_session_token = $(shell jq -r  ".advent_of_code.session_token" ../../env.json)

input.json:
	curl 'https://adventofcode.com/2024/$(path_from_root)input' -H 'cookie: session=$(aoc_session_token)' -o input.txt