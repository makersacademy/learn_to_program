#def ask question
  # your code here
def ask question
	while true
	puts question 
	reply=gets.chomp.downcase

		if reply=='yes'
			return true
		elsif reply=='no'
			return false
		else
			puts "Please answer either yes or no"
	
		end
	end 
end

apples=ask "do you like apples?"
puts apples

wet=ask "Do you wet the bed?"
puts wet

#end
