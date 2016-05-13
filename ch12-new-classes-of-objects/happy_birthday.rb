# your code here

def happy_birthday
	puts "what year were you born in?"
	year = gets.chomp
	puts "what number month were you born in?"
	month = gets.chomp
	puts "what date were you born on?"
	date = gets.chomp
	
	
	time = Time.new
	age = (time - Time.local(year, month, date))/(3600*24*365)
	puts "that would make you #{age.to_i} years old, correct?"
	answer = gets.chomp
	age.to_i.times{puts "SPANK!"} if answer.downcase == "yes"
end

happy_birthday

