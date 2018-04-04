#!/usr/koeki/bin/ruby
# coding: utf-8

def factorial(n)
  if n <= 1
    1
  else
    n * factorial(n-1)
  end
end

if ARGV[0] == nil
  STDERR.puts "階乗を計算したい数を指定して下さい"
  STDERR.puts "例: ./factorial.rb 5"
  exit 0
end

n=ARGV[0].to_i
printf("%dの階乗は%dです\n", n, factorial(n))
