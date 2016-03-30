puts "What year were you born in?"
year = gets.chomp.to_i
puts "What month were you born in?"
months = { 'January'=>1,'February'=>2,'March'=>3,
		'April'=>4,'May'=>5,'June'=>6,'July'=>7,
		'August'=>8,'September'=>9,'October'=>10,
		'November'=>11,'December'=>12 }
month = gets.chomp.capitalize
month = months[month]
puts "What day of the month were you born on?"
day = gets.chomp.to_i
now = Time.now
years_old = now.strftime("%Y").to_i - year
if now.strftime("%-m").to_i < month
	years_old -= 1
end
if (now.strftime("%-m").to_i == months[month] and now.strftime("%-d").to_i < day)
	years_old -= 1
end
years_old.times do
	puts "SPANK!"	
end