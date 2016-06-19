puts "Input your year of birth:"
b_year = gets.chomp
puts "Input your month of birth:"
b_month = gets.chomp
puts "Input your day of birth:"
b_day = gets.chomp
puts
puts "Thanks"
puts
puts ((Time.now - Time.local(b_year, b_month, b_day))/31536000).to_i.times {puts "SPANK!"}
