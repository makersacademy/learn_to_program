# your code here
puts 'Year of birth?'
birth = gets.chomp.to_i

puts 'Month?'
month = gets.chomp.to_i

puts 'Day?'
day   = gets.chomp.to_i

born = Time.local(birth, month, day)

now = Time.new

years = 1

while Time.local(birth + years , month, day) <= now
	puts 'SPANK'

	years = years + 1

end
puts "You are #{years-1} SPANKS old!"