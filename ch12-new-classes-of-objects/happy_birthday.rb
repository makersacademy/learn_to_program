puts 'What year were you born?'
print '> '
year = gets.chomp

puts 'What month were you born?'
print '> '
month = gets.chomp

puts 'What day were you born?'
print '> '
day = gets.chomp

your_birthday = "#{year}, #{month}, #{day}"

puts "You were born in #{(Time.local(your_birthday).year)}"
puts ''

number_of_spanks = ((Time.new).year - Time.local(your_birthday).year)

number_of_spanks.times do |i|
  puts 'SPANK!'
end

puts ''
puts "You have received #{number_of_spanks} spanks, one for each year of your life."