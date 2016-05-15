puts 'What year were you born?'
year = gets.chomp.to_i
puts 'month?'
month = gets.chomp.to_i
puts 'day?'
day = gets.chomp.to_i
dob = Time.new(year,month,day)
now = Time.new
if (dob.month == now.month && dob.day== now.day)
	(now.year-dob.year).times{puts "SPANK!"}
end