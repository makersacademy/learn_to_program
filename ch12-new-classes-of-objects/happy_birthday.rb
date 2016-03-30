puts "What year were you born?"
year = gets.chomp.to_i

puts "What month were you born?"
month = gets.chomp.to_i

puts "What day were you born?"
day = gets.chomp.to_i

puts birth_seconds = (year*3.5*10**7) + (month *2.6*10**6) + (day * 86400)

t = Time.new

curr_year = t.year
curr_month = t.month
curr_day = t.day

current_sec = (curr_year*3.5*10**7) + (curr_month *2.6*10**6) + (curr_day * 86400)

age = (current_sec - birth_seconds)/(3.5*10**7)

age.to_int.times do |x|
   (puts "SPANK!")
 end
