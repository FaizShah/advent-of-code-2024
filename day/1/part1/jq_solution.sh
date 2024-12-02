#!/usr/bin/env bash

jaq -nR '[inputs | split("   ") | map(tonumber)] | transpose | map(sort) | transpose |  map(.[0] - .[1] | abs) | add' $1