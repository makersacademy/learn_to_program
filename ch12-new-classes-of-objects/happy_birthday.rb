# your code here
puts'what year were you born ?'
year = gets.chomp.to_i
puts 'What month were you born'
month = gets.chomp.to_i
puts 'What day were you born'
day = gets.chomp.to_i
birthday = Time.local(year,month,day)
today = Time.new
#puts birthday
#puts today
age = 1
spanks = 0
a_year = Time.local(year+age,month,day)
while  Time.local(year +age, month,day) <= today #note a_year doesnt work its out by 1 you need to add 1 to age prior to check as done in brackets
   a_year = Time.local(year+age,month,day)
  puts 'Spank!'
  spanks += 1
  age +=1
end
puts "You got #{spanks} for all your birthdays"