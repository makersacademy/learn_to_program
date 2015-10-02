puts "year you were born?"
year = gets.chomp.to_i

puts "month you were born?"
month = gets.chomp.to_i

puts "day you were born?"
day = gets.chomp.to_i

puts "you were born on #{month} #{day} #{year}"

time = Time.new
Time.local(year, month, day)
count = 1
while Time.local(year, month, day) <= time
	puts "SPANK! #{count}"
	count += 1
	year += 1
end
