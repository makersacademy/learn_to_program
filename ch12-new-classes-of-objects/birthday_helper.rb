# your code here
birth_dates = {}

File.readlines('birthdates.txt').each do |line|
	name, date, year  = line.split(',')
	birth_dates[name] = Time.gm(year, *(date.split))
end

puts 'Which birthday do you want?'
name = gets.chomp
date = birth_dates[name]

if date == nil
	puts 'We don\'t have that name on file'
else
	now = Time.new
	age = now.year - date.year

	if now.month > date.month || (now.month == date.month && now.day > date.day)
		age += 1
	end

	if now.month == date.month && now.day == date.day
		puts "#{name} turns #{age} Today!"
	else
		date = date.strftime "%b %d"
		puts "#{name} will be #{age} on #{date}."
	end
end