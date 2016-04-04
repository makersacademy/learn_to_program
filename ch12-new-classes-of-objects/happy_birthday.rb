# your code here
puts 'What year were you born?'
b_year = gets.chomp.to_i

puts 'What month were you born? (1-12)'
b_month = gets.chomp.to_i

puts 'What day of the month were you born?'
b_day = gets.chomp.to_i

years = Time.new.year - Time.local(b_year, b_month, b_day).year

years.times { puts 'SPANK!'}
