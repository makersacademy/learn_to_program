alpha = Array.new + [12345]
beta = String.new + 'hello'
karma = Time.new

puts "alpha = #{alpha}"
puts "beta = #{beta}"
puts "karma = #{karma}"

puts

time = Time.new   # Shows the exact moment in time code is run
time2 = time + 60 # One minute later

puts time
puts time2

puts

puts Time.local(2000, 1, 1)
puts Time.local(1976, 8, 3, 13, 31) # each value between comma is part of the time/date - uyou can be as precise as required

puts

puts Time.gm(1955, 11, 5) # gm defines GMT as the time zone

puts

if time < time2
  puts "#{time} is before #{time2}"
else
  puts "#{time2} is before #{time}"
end

puts

puts "There are #{time2 - time} seconds between #{time2} and #{time}"
