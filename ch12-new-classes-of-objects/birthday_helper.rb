bday_info = {}
File.read("birthdays.rb").each_line do |line|
	name, date, year = line.split(",")
	bday_info[name] = Time.gm(year, *(date.split))
end

puts "Name of the birthday... person?"
person = gets.chomp
person_bday = bday_info[person]

if person_bday == nil
	puts "I don't know anyone by that name"
else
	now = Time.new
	person_age = ((now - person_bday)/(60*60*24*365)).to_i
end

if now.month > person_bday.month || (now.month == person_bday.month && now.day > person_bday.day)
	next_bday = (now.year + 1)
	person_age += 1
else
	next_bday = now.year
end

months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'June', 'July', 'Aug', 'Sept', 'Oct', 'Nov', 'Dec']

if now.month == person_bday.month && now.day == person_bday.day
	puts "#{person} turns #{person_age + 1} today!"
else
	puts "#{person} turns #{person_age + 1} on #{person_bday.day} #{months[(person_bday.month-1)]} #{next_bday}"
end
