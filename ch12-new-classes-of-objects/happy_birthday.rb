# your code here
#.local / .gm?
#time from birth till now
puts "Your year of birth?"
birthday_year = gets.chomp.to_i

puts "Your month of birth?"
birthday_month = gets.chomp.to_i

puts "Your date of birth?"
birthday_date = gets.chomp.to_i

birthday = Time.local(birthday_year, birthday_month, birthday_date)
time = Time.new


age = 1

while Time.local(birthday_year, birthday_month, birthday_date) <= time
puts "SPANK"
age += 1
end

#-----------------------Changes---------------
# removed age method as age is already changed in Time.local loop
# x+=1 is the same as x = x + 1

