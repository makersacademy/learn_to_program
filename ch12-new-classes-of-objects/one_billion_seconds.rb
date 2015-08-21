# puts 365 * 24
# puts 10 * 365 * 24 * 60

now = Time.now.to_i
puts "It is " + now.to_s + " seconds past the Epoch."

birthdate = Time.new(1983, 9, 20, 8, 30, 0, "+00:00").to_i
puts "trwh was born at " + birthdate.to_s + " seconds past the Epoch."

age = now-birthdate
puts "This means trwh is " + age.to_s + " seconds old."

ageYears = age / (365 * 24 * 60 * 60)
puts "For sanity checking, this is " + ageYears.to_s + " years old."