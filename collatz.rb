#!/usr/koeki/bin/ruby
# coding: utf-8

def collatz(n)
puts n
  if n == 1
    1
  elsif n < 1
    puts"それは無理よ。正の整数にしてよ"
  exit
  elsif n % 2 == 0
    collatz(n/2)
  else
    collatz(3 * n + 1)
  end
end

if ARGV[0] == nil
  STDERR.puts "コラッツ予想をしたい数を指定しな。"
  STDERR.puts "例: ./collatz.rb 12"
  exit 0
end

n = ARGV[0].to_i

printf("%dは最終的に%dなりました\n", ARGV[0].to_i, collatz(n))

