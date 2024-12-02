#!/usr/bin/env bash
perl -lane 'push @c1, $F[0]; push @c2, $F[1]; END { print eval join("+", map { abs((sort @c1)[$_] - (sort @c2)[$_]) } 0..$#c1); }' $1