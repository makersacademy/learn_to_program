def happy_birthday

  puts "What year were you born?"
  year = gets.chomp

  puts "Which month is your birthday?"
  month = gets.chomp

  puts "Which day of the month is your birthday?"
  day = gets.chomp

  birthday = Time.local(year, month, day)
  time = Time.new

age_in_seconds = time - birthday

age_in_years = age_in_seconds / 31536000
puts "SPANK!\n" * age_in_years
end

happy_birthday
