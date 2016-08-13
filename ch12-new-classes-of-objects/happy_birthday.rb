
puts "What year were you born in? (e.g. 1985)"
year = gets.chomp

puts "What month? (e.g. 8)"
month = gets.chomp

puts "What day (e.g. 22)?"
day = gets.chomp

birthday = Time.local("#{year}", "#{month}", "#{day}")
today = Time.new

difference_in_seconds = (today - birthday).to_i

age = difference_in_seconds / (60 * 60 * 24 * 7 * 52)

puts "You are #{age} years old!"

age.times { puts "SPANK!" }