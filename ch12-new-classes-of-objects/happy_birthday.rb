puts "What year were you born? eg. 1979"
b_year = gets.chomp.to_i
puts "Thank you, and what month was that? eg. 7"
b_month = gets.chomp.to_i
puts "In for a penny, in for a pound, what day of the month? eg. 5"
b_day = gets.chomp.to_i                       # Musn't forget to convert to an interger!!!!

b = Time.local(b_year, b_month, b_day)        # This is just for show, as 'b' is never called.
t = Time.new

age = 1

while Time.local(b_year + age, b_month, b_day) <= t
  puts 'SPANK!'
  age = age + 1           # Adds a year everytime the function is run. 
end
