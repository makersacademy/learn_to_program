def ask question

	while true
	  puts question
	  reply = gets.chomp.downcase

	  case reply
	    when 'yes'
          answer = true
		  break
		when 'no'
		  answer = false
		  break
		else
		  puts "Please answer yes or no."
	  end
	
	end

return answer
end

ask "Is it Monday?"
ask "Are you testing Github?"
ask "Are you awake?"
puts "Silly question!"
confident = ask "Do you know what you're doing?"

if confident == true
puts "Yay, way to go!"
else
puts "You moron, concentrate more!"
end