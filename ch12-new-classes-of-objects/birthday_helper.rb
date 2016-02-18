def age_calc(birthdate)
#born_on = Time.local(year,month,day)
	today = Date.now
	age = (today - birthdate)
end

today = Date.now
birth_list = {} #empty hash/object
# we read each line of the file and put it into a hash, where key=name, value=D.O.B
File.readlines('birthdates.txt').each do |line|
  name, date, year = line.split(',')
  birth_list[name] = Date.local(year, *(date.split)) #as date.split is an array so the * allows it to be read s.t. Time.local(year, month, day)
end

puts "Whose birthday do you want to know?"
named= gets.chomp
birth_date = birth_list[named]

if birth_date = nil
	puts "I am afraid that I don't know that person!"
else	
	age = age_calc(birth_date)
	if birth_date.month == today.month && birth_date.day == today.day
		puts "#{named} turns #{age} today!"
	else
		puts "#{named} turns #{age+1} on #{birth_date.month} #{birth_date.day}!"
	end
end