class Integer
  # your code here
  def factorial
  	fact = 1
  	self1 = self
  	if self == 0
  		fact = 1
  	else
  		while self1 > 0
  			fact = fact*self1
  			self1 -= 1
  		end
  	end
  	fact
  end

  def to_roman
  	num = self
  	 if num < 5
  	 "I" * num
  elsif (num == 5)
  	 "V"
  elsif (num > 5 and num < 10)
  	 "V" + "I"*(num - 5)
  elsif num == 10
  	 "X"
  elsif (num > 10 and num < 49)
  	if ( num%10 >= 5)
  		 "X"*(num/10) + "V" + "I"*(num%10 - 5)
  	else
  		 "X"*(num/10) + "I"*(num%10)
  	end
  elsif num == 50 
  	 "L"
  elsif (num > 50 and num < 100)
  	if (num%10 >= 5)
  		 "L" + "X"*((num-50)/10) + "V" + "I"*(num%10 - 5)
  	else
  		 "L" + "X"*((num-50)/10) + "I"*(num%10)
  	end
  elsif (num == 100)
  	 "C"
  elsif (num > 100 and num < 500)
  	if ( num%100 >= 50)
  		if (num%10 >= 5)
  			 "C"*(num/100) + "L" + "X"*((num%100)/10 - 5) + "V" + "I"*(num%10 -5)
  		else
  			 "C"*(num/100) + "L" + "X"*((num%100)/10 - 5) + "I"*(num%10)
  		end
  	else
  		if (num%10 >= 5)
  			 "C"*(num/100) + "X"*(num%100/10) + "V" + "I"*(num%10 -5)
  		else
  			 "C"*(num/100) + "X"*(num%100/10) + "I"*(num%10)
  		end
  	end
  elsif (num == 500)
  	 "D"

  elsif (num > 500 and num < 1000)
  	if ( num%100 >= 50)
  		if (num%10 >= 5)
  			 "D" + "C"*(num/100 - 5) + "L" + "X"*((num%100)/10 - 5) + "V" + "I"*(num%10 -5)
  		else
  			 "D" + "C"*(num/100 - 5) + "L" + "X"*((num%100)/10 - 5) + "I"*(num%10)
  		end
  	else
  		if (num%10 >= 5)
  			 "D" + "C"*(num/100 - 5) + "X"*(num%100/10) + "V" + "I"*(num%10 -5)
  		else
  			 "D" + "C"*(num/100 - 5) + "X"*(num%100/10) + "I"*(num%10)
  		end
  	end
  elsif (num == 1000)
  	 "M"
  elsif (num > 1000 and num < 3001)
  	if (num%1000 >= 500)
  		if (num%100 >= 50)
  			if (num%10 >= 5)
  				 "M"*(num/1000) + "D" + "C"*(((num%1000)/100) - 5) + "L" + "X"*((num%100)/10 - 5) + "V" + "I"*(num%10 -5)
  			else
  				 "M"*(num/1000) + "D" + "C"*(((num%1000)/100) - 5) + "L" + "X"*((num%100)/10 - 5)  + "I"*(num%10)
  			end
  		else
  			if (num%10 >= 5)
  				 "M"*(num/1000)  + "D" + "C"*(((num%1000)/100) - 5)  + "X"*((num%100)/10) + "V" + "I"*(num%10 -5)
  			else
  				 "M"*(num/1000)  + "D" + "C"*(((num%1000)/100) - 5) + "X"*((num%100)/10)  + "I"*(num%10)
  			end
  		end
  	else
  		if (num%100 >= 50)
  			if (num%10 >= 5)
  				 "M"*(num/1000)  + "C"*((num%1000)/100) + "L" + "X"*((num%100)/10 - 5) + "V" + "I"*(num%10 -5)
  			else
  				 "M"*(num/1000)  + "C"*((num%1000)/100) + "L" + "X"*((num%100)/10 - 5)  + "I"*(num%10)
  			end
  		else
  			if (num%10 >= 5)
  				 "M"*(num/1000)   + "C"*((num%1000)/100)  + "X"*((num%100)/10) + "V" + "I"*(num%10 -5)
  			else
  				 "M"*(num/1000)  + "C"*((num%1000)/100) + "X"*((num%100)/10)  + "I"*(num%10)
  			end
  		end
  	end
  end
end
end

puts 7.to_roman
