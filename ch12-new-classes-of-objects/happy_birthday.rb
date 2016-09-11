puts "Hello! What year were you born?"
year = gets.chomp
puts "What Month?"
month = gets.chomp
puts "What day?"
day = gets.chomp
birthday = Time.mktime(year.to_i,month.to_i,day.to_i)

current_date = Time.new

puts "Here's a spank for every birthday you've had!"
seconds_age = current_date - birthday
years = ((((seconds_age / 60) / 60) / 24) /365)

(years.floor).times do
	puts "Spank!"
end
