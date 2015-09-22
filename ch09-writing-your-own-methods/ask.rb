def ask question
  puts question
		reply = gets.chomp.downcase
		if (reply == "yes" || reply == "no")
			if reply == "yes"
				answer = true
			else
				answer = false
			end
		else
			puts "Please answer yes or no"
		end
end

puts "Hello and thank you for..."
puts
ask "Do you like eating taco's?"
wets_bed = ask "Do you wet the bed?"
ask "do you like Mexican?"

wets_bed