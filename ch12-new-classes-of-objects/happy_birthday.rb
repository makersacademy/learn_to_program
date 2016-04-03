puts "Which year you were born?"
reply1 = gets.chomp
puts "And which month?"
reply2 = gets.chomp
puts "And which day?"
reply3 = gets.chomp

years = Time.now.to_i - Time.local(reply1, reply2, reply3)
seconds_per_year = 31557600
spanking_result = years / seconds_per_year

puts "SPANK!" * spanking_result