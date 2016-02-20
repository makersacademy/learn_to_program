
puts "What year were you born?"
  year = gets.chomp
puts "What month were you born in (Please put a number 1-12)?"
  month = gets.chomp
puts "What date of the month were you born? (Please put a number 1-31)"
  date = gets.chomp

birthday = Time.local(year, month, date)
age = (Time.now - birthday) / (365*24*60*60)

puts "SPANK!" * age
