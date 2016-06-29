birth_date = Time.local(1992, 12, 7)
current_time = Time.new

age = current_time - birth_date
puts "You are #{age} seconds old!"

diff = birth_date + 1000000000
puts "You will be 1 billion seconds old on #{diff}"
