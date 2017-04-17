def ask question
	while true
		puts question
		reply = gets.chomp.downcase
		return true if reply == 'yes'
		return false if reply == 'no'	
		puts 'Please answer "yes" or "no".'
	end
end

puts 'Hello and thank you for taking part!'
puts 
ruby_fan = ask 'Do you like Ruby?'
ask 'Do you like Java?'
ask 'Do you like C++?'
ask 'Do you like Python?'
puts
puts ruby_fan