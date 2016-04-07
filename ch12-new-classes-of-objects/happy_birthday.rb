def happy_birthday
	puts "What year were you born?"
		year = gets.chomp.to_i
	puts "What month were you born? (1 - 12)"
		month = gets.chomp.to_i
	puts "What day were you born?"
		day = gets.chomp.to_i
	time = Time.new
	born = Time.local(year,month,day)

	age = 1

	while Time.local(year + age, month, day) <= time
  		puts 'SPANK!'
  		age = age + 1
	end

end


happy_birthday
