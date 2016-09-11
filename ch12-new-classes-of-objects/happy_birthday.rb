puts "What year were you born?"
year = gets.chomp.to_i
puts "What month were you born"
month_str = gets.chomp.downcase
if month_str == "january"
  month = 1
elsif month_str == "february"
  month = 2
elsif month_str == "march"
  month = 3
elsif month_str == "april"
  month = 4
elsif month_str == "may"
  month = 5
elsif month_str == "june"
  month = 6
elsif month_str == "july"
  month = 7
elsif month_str == "august"
  month = 8
elsif month_str == "september"
  month = 9
elsif month_str == "october"
  month = 10
elsif month_str == "november"
  month = 11
elsif month_str == "december"
  month = 12
elsif month_str.to_1 < 13
else
  puts "you did not enter a valid month, application failed."
end

puts "What day were you born?"
day = gets.chomp.to_i

birthday = Time.local(year, month, day)

puts ("Spank!" * ((Time.now - birthday) / 31536000))
