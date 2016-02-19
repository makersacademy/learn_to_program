def grandfather_clock &block
	a = Time.new.hour
		if a >= 13
   			a =- 12
		end
		if
  			a == 0
  			a = 12
  		end 
  		

	a.times do 
  	block.call
	end
end



grandfather_clock { puts 'DONG!'}
  # your code here
