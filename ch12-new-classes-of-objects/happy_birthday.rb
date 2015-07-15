puts "give us the year you were born?"
year  = gets.chomp
puts "Give us the month you were born?"
month = gets.chomp
puts "Give us the day you were born?"
day   = gets.chomp


((Time.now - Time.local(year, month, day)) / 3153600 / 10).to_i.times do
  puts "SPANK"
end
