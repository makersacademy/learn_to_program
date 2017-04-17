puts "please enter your birthyear"
byear = gets.chomp.to_i
puts "please enter your birthmonth if jan = 1, feb 2 etc..."
bmonth= gets.chomp.to_i
puts "please enter your birth day"
bday = gets.chomp.to_i

birthday = Time.new(byear, bmonth, bday)
now = Time.new

puts birthday
puts now
if now.yday < birthday.yday
	age = (now.year - birthday.year) - 1
	
else
	age = now.year - birthday.year

end


age.times {puts 'happy birthday to you'}

