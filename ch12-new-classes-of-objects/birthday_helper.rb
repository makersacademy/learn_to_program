Dir.chdir('/Users/olliehaydon-mulligan/Documents/Coding/Exercises')

birthdays_string = File.read('./birthdaylist.txt')
birthdays_hash = {}
birthdays_string.split("\n").each do |line|
	birthdays_hash[ line[/[a-zA-Z- ]+/].downcase ] = line[/\w+\s\d+\D+\s\d+/].split(',')
end

puts "Give me a name..."
name = gets.chomp.downcase

birthday = birthdays_hash[name][0]

year = birthdays_hash[name][1][1..-1].to_i
months = { 'Jan'=>1,'Feb'=>2,'Mar'=>3,
		'Apr'=>4,'May'=>5,'Jun'=>6,'Jul'=>7,
		'Aug'=>8,'Sep'=>9,'Oct'=>10,
		'Nov'=>11,'Dec'=>12 }
month = months[birthdays_hash[name][0][0,3]]
day = birthdays_hash[name][0][/\d+/].to_i
now = Time.now
years_old = now.strftime("%Y").to_i - year
if now.strftime("%-m").to_i < month
	years_old -= 1
end
if (now.strftime("%-m").to_i == months[month] and now.strftime("%-d").to_i < day)
	years_old -= 1
end

puts "Their birthday is on #{birthday}, and they'll be #{years_old+1}."