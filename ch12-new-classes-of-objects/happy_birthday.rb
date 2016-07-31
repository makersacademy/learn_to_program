# Happy birthday! Ask what year a person was born in, then the month, and then the day. 
# Figure out how old they are, and give them a big SPANK! for each birthday they have had.

puts "What year were you born?"
year_of_birth = gets.chomp.to_i

puts "What month were you born?"
month_of_birth = gets.chomp.to_i

puts "What day were you born?"
day_of_birth = gets.chomp.to_i

date_of_birth = Time.new(year_of_birth, month_of_birth, day_of_birth)
b_year = date_of_birth.year
b_month = date_of_birth.month
b_day = date_of_birth.day

today = Time.now
t_year = today.year
t_month = today.month
t_day = today.day


if b_month < t_month
    age = t_year - b_year
elsif b_month > t_month
    age = (t_year - b_year) - 1
else
    if b_day <= t_day
        age = age = t_year - b_year 
    else
       age = (t_year - b_year) - 1 
    end
end

puts " You are #{age} years old!"

for i in 1..age.to_i
    puts "#{i} SPANK!" 
end

