puts 'What year were you born?'
yyyy = gets.chomp.to_i

puts 'What month were you born?'
mm = gets.chomp.to_i

puts 'And on what day were you born?'
dd = gets.chomp.to_i

time = Time.local(yyyy, mm, dd)
time2 = Time.new

age = 1

while Time.local(yyyy+age, mm, dd) <= time2
	puts 'SPANK!'
	age = age + 1
end 

