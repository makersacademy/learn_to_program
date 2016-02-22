puts 'What year were you born?'
year = gets.chomp.to_i

puts 'What month were you born in?'
month = gets.chomp.to_i

puts 'What day were you born?'
day = gets.chomp.to_i

born = Time.local("#{year}","#{month}","#{day}")
puts born
time = Time.new

age = ((time - born)/60/60/24/364.25).to_i
puts 'SPANK! '*age