puts 'What year were you born?'
y = gets.chomp
puts 'What month were you born?'
month = gets.chomp
months = {"January" => 1, "February" => 2, "March" => 3, "April" => 4, "May" => 5, "June" => 6, "July" => 7, "August" => 8, "September" => 9, "October" => 10, "November" => 11, "December" => 12}
if months.include?(month.capitalize)
	m = months[month.capitalize]
else
		puts "Sorry I don't think that's a month, please try again"
		exit
end
puts 'What day were you born?'
d = gets.chomp
age = ((Time.new - Time.mktime(y, m, d))/31556952).to_i
puts "You are #{age} years old! Here is one spank for every year!"
puts "SPANK! "*age
