puts "What year were you born in?"
year = gets.chomp

puts "What month were you born in?"
month = gets.chomp.downcase
case month
when "january"
   month_num = 1
when "february"
   month_num = 2
when "march"
   month_num = 3
when "april"
   month_ num = 4
when "may"
   month_num = 5
when "june"
   month_num = 6
when "july"
   month_num = 7
when "august"
   month_num = 8
when "september"
   month_num = 9
when "october"
   month_num = 10
when "november"
   month_num = 11
when "december"
   month_num = 12
else
   puts "Can you spell?"
   # catch them if they input the month incorrectly
end

puts "What date were you born on?"
date = gets.chomp

time_at_birth = Time.new(year,month_num,date)
seconds_alive = Time.now - time_at_birth

birthdays = seconds_alive / (365.25 * 24 * 3600)
puts "SPANK!" * birthdays
