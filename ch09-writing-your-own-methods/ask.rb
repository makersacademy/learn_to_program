def ask (question)
  	while true
  		puts question
  		reply = gets.chomp

  		if reply == 'yes'
  		true
  		elsif reply == 'no'
  		false
  		else
  		ask (question) #recursion
  		end
  		break
		
	end
end

#removed answer variable
#rspec passes without using recursion but to capture yes/no responses only (and reduce lines of code), have included.