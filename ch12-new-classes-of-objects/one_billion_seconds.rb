
age = Time.new - Time.new(1987, 3, 12)

puts "I am #{age} seconds old."

timeleft = 1000000000 - age

puts "I will be a billion seconds old on #{Time.new + timeleft}"
