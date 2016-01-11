puts "What year were you born in? (please enter an integer)"
year = gets.chomp.to_i
puts "What month were you born in? (please enter an integer)"
month = gets.chomp.to_i
puts "What day were you born on? (please enter an integer)"
day = gets.chomp.to_i

today_year = Time.new.year
today_month = Time.new.month
today_day = Time.new.day

puts "Happy Birthday!!!" if today_day==day && today_month==month
if today_month >= month
  if today_day >= day
    puts "SPANK! " * (today_year - year)
  end
else
  puts "SPANK! " * (today_year - year -1)
end
