puts "Hey! What year were you born in?"
year = gets.chomp

puts "... and what month?"
month = gets.chomp

puts "... and the date...?"
day = gets.chomp

time = Time.new
birthday = Time.mktime(year, month, day)
age = (time - birthday).to_i / (525600 * 60)

puts "You're #{age}!"
puts
puts "SPANK!" * age