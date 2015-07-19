puts "What year were you born in?"
birth_year = gets.chomp

puts "What month were you born in? Please type a number to represent the month (i.e. April = 4)"
birth_month = gets.chomp

puts "What day in the month were you born in?"
birth_day = gets.chomp

birth = Time.local(birth_year, birth_month, birth_day)
puts birth

#yearly = birth + (60*60*24*365)

now = Time.new
years = ((now - birth)/(60*60*24*365)).to_i


years.times do |i|
  puts "For your birthday on #{Time.local(birth_year.to_i + i, birth_month, birth_day)} get a SPANK!"

end
