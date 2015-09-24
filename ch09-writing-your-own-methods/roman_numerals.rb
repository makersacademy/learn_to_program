def roman_numeral num
  # your code here
   if num < 4
  	"I" * num
  elsif(num ==4)
  	"I" + "V"
  elsif (num == 5)
  	 "V"
  elsif (num > 5 and num < 9)
  	 "V" + "I"*(num - 5)
  elsif (num == 9)
  	"I" + "X"
  elsif num == 10
  	 "X"
  elsif (num > 10 and num < 49)
  	if ( num%10 >= 5)
  		if (num%10 != 9)
  		 "X"*(num/10) + "V" + "I"*(num%10 - 5)
  		else
  			"X"*(num/10) + "IX"
  		end
  	else
  		if (num%10 != 4)
  		 "X"*(num/10) + "I"*(num%10)
  		else
  			"X"*(num/10) + "IV"
  		end
  	end
  elsif num == 49
  	"XLIX"
  elsif num == 50 
  	 "L"
  elsif (num > 50 and num < 99)
  	if (num%10 >= 5)
  		if (num%10 != 9)
  			"L" + "X"*((num-50)/10) + "V" + "I"*(num%10 - 5)
  		else
  			"L" + "X"*((num-50)/10)  + "IX"
  		end
  	else
  		if (num%10 != 4)
  		 	"L" + "X"*((num-50)/10) + "I"*(num%10)
  		else
  			"L" + "X"*((num-50)/10) + "IV"
  		end
  	end
  elsif (num == 99)
  	"XCIX"
  elsif (num == 100)
  	 "C"
  elsif (num > 100 and num < 499)
  	if ( num%100 >= 50)
  		if (num%10 >= 5)
  			 "C"*(num/100) + "L" + "X"*((num%100)/10 - 5) + "V" + "I"*(num%10 -5)
  		else
  			 "C"*(num/100) + "L" + "X"*((num%100)/10 - 5) + "I"*(num%10)
  		end
  	else
  		if (num%10 >= 5)
  			if(num%10 != 9)
  			 "C"*(num/100) + "X"*(num%100/10) + "V" + "I"*(num%10 -5)
  			else
  			 "C"*(num/100) + "X"*(num%100/10) + "IX"
  			end
  		else
  			if (num%10 != 4)
  			 "C"*(num/100) + "X"*(num%100/10) + "I"*(num%10)
  			else
  				"C"*(num/100) + "X"*(num%100/10) + "IV"
  			end
  		end
  	end
  elsif (num == 499)
  	"CDXCIX"
  elsif (num == 500)
  	 "D"

  elsif (num > 500 and num < 899)
  	if ( num%100 >= 50)
  		if (num%10 >= 5)
  			if(num%10 != 9)
  				"D" + "C"*(num/100 - 5) + "L" + "X"*((num%100)/10 - 5) + "V" + "I"*(num%10 -5)
  			else
  				"D" + "C"*(num/100 - 5) + "L" + "X"*((num%100)/10 - 5) + "IX"
  			end
  		else
  			if (num%10 != 4)
  			 	"D" + "C"*(num/100 - 5) + "L" + "X"*((num%100)/10 - 5) + "I"*(num%10)
  			else
  				"D" + "C"*(num/100 - 5) + "L" + "X"*((num%100)/10 - 5) + "IV"
  			end
  		end
  	else
  		if (num%10 >= 5)
  			if (num%10 != 9)
  			 	"D" + "C"*(num/100 - 5) + "X"*(num%100/10) + "V" + "I"*(num%10 -5)
  			else 
  				"D" + "C"*(num/100 - 5) + "X"*(num%100/10) + "IX"
  			end
  		else
  			if (num%10 != 4)
  			 	"D" + "C"*(num/100 - 5) + "X"*(num%100/10) + "I"*(num%10)
  			else
  				"D" + "C"*(num/100 - 5) + "X"*(num%100/10) + "IV"
  			end
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
          if(num%10 != 9)
  				  "M"*(num/1000)   + "C"*((num%1000)/100)  + "X"*((num%100)/10) + "V" + "I"*(num%10 -5)
          else
            "M"*(num/1000)   + "C"*((num%1000)/100)  + "X"*((num%100)/10) + "IX"
          end
  			else
          if (num%10 != 4)
  				  "M"*(num/1000)  + "C"*((num%1000)/100) + "X"*((num%100)/10)  + "I"*(num%10)
          else
            "M"*(num/1000)  + "C"*((num%1000)/100) + "X"*((num%100)/10)  + "IV"
          end
  			end
  		end
  	end
  end
end
