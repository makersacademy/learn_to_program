puts "Which year were you born?"
year = gets.chomp.to_i
puts "Which month?"
month = gets.chomp.to_i
puts "And which day please?"
day = gets.chomp.to_i

date = Time.local(year, month, day)
birthday = ((Time.now - date)/(60*60*24*365)).to_i

puts "You are #{birthday} years old"
puts
puts "SPANK!" * birthday
