def happy_birthday
puts "Please enter your birth year as a 4 figure number (e.g. 1992):"
  year = gets.chomp.to_i
  until (year <= 2016) && (year >= 1900)
    year = gets.chomp
  end
puts "Please enter the month you were born in numerical form (e.g. 02 for February):"
  month = gets.chomp.to_i
  until (month <= 12) && (month >= 1)
  month = gets.chomp.to_i
  end
puts "Please enter the day of the month you were born on in numerical form (e.g. 19):"
  day = gets.chomp.to_i
  until (day <=31) && (day >= 1)
  day = gets.chomp.to_i
  end

years_old_seconds = (Time.new) - (Time.gm(year, month, day))
years_old = (years_old_seconds / 365.25 / 24 / 60 / 60)
years_old = years_old.to_i

puts "You were born on #{Time.gm(year, month, day)}"
puts "You were born on #{day}/#{month}/#{year}."
puts "That makes you #{years_old_seconds} seconds old."
puts "Or, #{years_old} years old."
end

happy_birthday
