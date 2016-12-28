#!/usr/local/bin/ruby

num = File.read("./numbers/value").chomp.to_i
File.write("./output/stuff", num += 1)
