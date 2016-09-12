puts "What year were you born?"
year = gets.chomp.to_i

puts "What month were you born (1-12)?"
month = gets.chomp.to_i

puts "And finally, on what day of that month?"
day = gets.chomp.to_i

age = (Time.new - Time.local(year,month,day))/(60*60*24*365.25).to_i

while age > 1
  puts "SPANK!"
  age = age - 1
end
