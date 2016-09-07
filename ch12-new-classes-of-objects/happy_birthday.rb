puts "What year were you born in?"
year = gets.chomp

puts "What month were you born in?"
month = gets.chomp

puts "What day of the month were you born on?"
day = gets.chomp

age_in_secs = Time.now - Time.local(year, month, day)
birthdays = (age_in_secs / 60 / 60 / 24 / 365.25).floor

birthdays.times { puts "SPANK!" }
