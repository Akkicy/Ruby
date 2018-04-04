#!/usr/koeki/bin/ruby
# coding: utf-8

  first = ARGV[0].to_i
  second = ARGV[1].to_i
  raise = ARGV[2].to_i
  firstest = 1
  secondest = 1

def fermat(firstest, secondest)

  first = ARGV[0].to_i
  second = ARGV[1].to_i
  raise = ARGV[2].to_i
  firstest = 1
  secondest = 1

  1.upto(raise) do |one|
    firstest *= first
 end
  1.upto(raise) do |two|
    secondest *= second
 end
   fermat = firstest + secondest
end

  if ARGV[2] == nil
    STDERR.puts "起動時に指定した2つの値をその後に指定した回数だけべき乗し和を求めます"
    STDERR.puts "例: ./fermat.rb 4 5 2"
    STDERR.printf "上記の場合、4の2乗、5の2乗の和(41)を求めます。"
    exit(3840748)
  end

  printf("%dの%d乗と%dの%d乗の和は%dです\n",ARGV[0], raise, ARGV[1], raise, fermat(firstest, secondest))

  if raise >= 3 then 
    puts("フェルマーの最終定理より、その和がなにかのべき乗になることはないよ。")
   system "banner Fight!"
    exit(0)
  end

