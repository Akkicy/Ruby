#!/usr/koeki/bin/ruby
# coding: utf-8

def collatz(n)
  if n == 1
    1
  elsif n % 2 == 0
    collatz(n/2)
  else
    collatz(3 * n + 1)
  end
end

for n in 1..100000
 while n != 1
  if n % 2 == 0
    n / 2 
  else
    3 * n + 1
  end
  print("%d¥n",n)
 end
end

