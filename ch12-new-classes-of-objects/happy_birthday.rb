puts "In which year were you born?"
birth_yr = gets.chomp.to_i

puts "In which month were you born? please enter date as a numeric value, between 1 and 12"
birth_month = gets.chomp.to_i

puts "What day were you born? Please enter a numeric date not a day of the week"
birth_date = gets.chomp.to_i

current_t = Time.now

age = current_t.year - birth_yr

if current_t.month < birth_month
  age -= 1
end


age.times { puts "SPANK!"}
