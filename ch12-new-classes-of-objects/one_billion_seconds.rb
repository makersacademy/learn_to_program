require 'Time'

time = Time.new(1987, 05, 04, 01, 25)
puts "born: #{time}"
time2=time+1000_000_000
puts "one billion second anniversary: #{time2}"
