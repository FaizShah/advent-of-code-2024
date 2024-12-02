#!/usr/bin/env bash
ruby -ane 'BEGIN{c1=c2=[]}; c1<<$F[0].to_i; c2<<$F[1].to_i; END{puts c1.sort.zip(c2.sort).sum { |a,b| (a-b).abs }}' $1
