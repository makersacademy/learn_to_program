puts "What year were you born in?"
birth_year = gets.chomp.to_i
puts "And what month (number!)?"
birth_month = gets.chomp.to_i
puts "And which day?"
birth_day = gets.chomp.to_i

time = Time.new
day_now = time.day
month_now = time.mon
year_now = time.year
birthday = Time.new(birth_year,birth_month,birth_day)
day_then = birthday.day
month_then = birthday.mon
year_then = birthday.year
if (month_now == month_then && day_now >= day_then) || month_now > month_then
  month = 0
else
  month = -1
end
birthdays = (year_now - year_then) + month

puts "That's #{birthdays} birthdays!"
if month_then == month_now && day_then == day_now
  puts "..and it's your birthday today!?"
  puts "Why didn't you say!"
  puts "HAPPY BIRTHDAY!"
end
puts "SPANK!\n" * birthdays