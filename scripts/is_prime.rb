#!/usr/local/bin/ruby

require 'prime'

num = File.read("./numbers/value").chomp.to_i
if Prime.prime?(num)
  puts "found prime #{num}!"
  File.write("./output/stuff", num)
  exit 0
else
  puts "{num} is not prime"
  exit 1
end
