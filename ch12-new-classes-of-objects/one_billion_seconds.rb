
age = Time.gm(1983, 01, 15).to_i

puts "This is the second I was born: #{age}"
puts "The date I turn/turned 1 billion seconds old is #{Time.at(1_000_000_000 + age)}"