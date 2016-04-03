puts "When were you born? Please enter DDMMYYY"

ddate = gets.chomp
year = date[4..-1].to_i
month = date[2..3].to_i
day = date[0..1].to_i

old = Time.new - Time.local(year, month, day)
puts (old/(3600*24*365)).to_i

age = 0
while age < (old/(3600*24*365)).to_i
	puts "Happy Birthday #{age+1}. SPANK!"
	age += 1
end


