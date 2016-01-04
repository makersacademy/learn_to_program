require "time"

x = Time.new - Time.gm(1991, 11, 6, 2, 30)

y = Time.new + x
puts "I will be 1 billion seconds old on #{y}"