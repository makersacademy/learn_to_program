puts "Enter your birth year in the following format: YYYY"
year = gets.chomp.to_i
puts "Enter your birth month in the following format: MM"
month = gets.chomp.to_i
puts "Enter your birth day in the following format: DD"
day = gets.chomp.to_i

y = Time.new.year - year
m = Time.new.month - month
d = Time.new.day - day
 if m - month > 0 
puts "You are #{y}years old"
puts "SPANK!" * y
elsif m -month == 0 and d - day >= 0
puts "You are #{y}years old"
puts "SPANK!" * y
elsif m -month == 0 and d - day < 0
puts "You are #{y-1}years old"
puts "SPANK!" * (y-1)
elsif m-month < 0
puts "You are #{y-1}years old"
puts "SPANK!" * (y-1)
end
