puts "What year were you born?"
year= gets.chomp
puts "What month?"
month= gets.chomp
puts "What day?"
day= gets.chomp

time= Time.mktime(year,month,day)
puts "You were born on #{time}"

current_time=Time.new
sec_old=current_time-time
years_old=sec_old/(60*60*24*365)
years_old=years_old.to_i
puts "You\'re #{years_old} years old"

while years_old > 0
    puts "SPANK! x #{years_old}"
    years_old-= 1
end