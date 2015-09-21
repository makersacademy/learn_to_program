def old_roman_numeral num
  # your code here
  if num < 5
  	puts "I" * num
  elsif (num == 5)
  	puts "V"
  elsif (num > 5 and num < 10)
  	puts "V" + "I"*(num - 5)
  elsif num == 10
  	puts "X"
  elsif (num > 10 and num < 49)
  	if ( num%10 >= 5)
  		puts "X"*(num/10) + "V" + "I"*(num%10 - 5)
  	else
  		puts "X"*(num/10) + "I"*(num%10)
  	end
  elsif num == 50 
  	puts "L"
  elsif (num > 50 and num < 100)
  	if (num%10 >= 5)
  		puts "L" + "X"*((num-50)/10) + "V" + "I"*(num%10 - 5)
  	else
  		puts "L" + "X"*((num-50)/10) + "I"*(num%10)
  	end
  elsif (num == 100)
  	puts "C"
  elsif (num > 100 and num < 500)
  	if ( num%100 >= 50)
  		if (num%10 >= 5)
  			puts "C"*(num/100) + "L" + "X"*((num%100)/10 - 5) + "V" + "I"*(num%10 -5)
  		else
  			puts "C"*(num/100) + "L" + "X"*((num%100)/10 - 5) + "I"*(num%10)
  		end
  	else
  		if (num%10 >= 5)
  			puts "C"*(num/100) + "X"*(num%100/10) + "V" + "I"*(num%10 -5)
  		else
  			puts "C"*(num/100) + "X"*(num%100/10) + "I"*(num%10)
  		end
  	end
  elsif (num == 500)
  	puts "D"

  elsif (num > 500 and num < 1000)
  	if ( num%100 >= 50)
  		if (num%10 >= 5)
  			puts "D" + "C"*(num/100 - 5) + "L" + "X"*((num%100)/10 - 5) + "V" + "I"*(num%10 -5)
  		else
  			puts "D" + "C"*(num/100 - 5) + "L" + "X"*((num%100)/10 - 5) + "I"*(num%10)
  		end
  	else
  		if (num%10 >= 5)
  			puts "D" + "C"*(num/100 - 5) + "X"*(num%100/10) + "V" + "I"*(num%10 -5)
  		else
  			puts "D" + "C"*(num/100 - 5) + "X"*(num%100/10) + "I"*(num%10)
  		end
  	end
  elsif (num == 1000)
  	puts "M"
  elsif (num > 1000 and num < 3001)
  	if (num%1000 >= 500)
  		if (num%100 >= 50)
  			if (num%10 >= 5)
  				puts "M"*(num/1000) + "D" + "C"*(((num%1000)/100) - 5) + "L" + "X"*((num%100)/10 - 5) + "V" + "I"*(num%10 -5)
  			else
  				puts "M"*(num/1000) + "D" + "C"*(((num%1000)/100) - 5) + "L" + "X"*((num%100)/10 - 5)  + "I"*(num%10)
  			end
  		else
  			if (num%10 >= 5)
  				puts "M"*(num/1000)  + "D" + "C"*(((num%1000)/100) - 5)  + "X"*((num%100)/10) + "V" + "I"*(num%10 -5)
  			else
  				puts "M"*(num/1000)  + "D" + "C"*(((num%1000)/100) - 5) + "X"*((num%100)/10)  + "I"*(num%10)
  			end
  		end
  	else
  		if (num%100 >= 50)
  			if (num%10 >= 5)
  				puts "M"*(num/1000)  + "C"*((num%1000)/100) + "L" + "X"*((num%100)/10 - 5) + "V" + "I"*(num%10 -5)
  			else
  				puts "M"*(num/1000)  + "C"*((num%1000)/100) + "L" + "X"*((num%100)/10 - 5)  + "I"*(num%10)
  			end
  		else
  			if (num%10 >= 5)
  				puts "M"*(num/1000)   + "C"*((num%1000)/100)  + "X"*((num%100)/10) + "V" + "I"*(num%10 -5)
  			else
  				puts "M"*(num/1000)  + "C"*((num%1000)/100) + "X"*((num%100)/10)  + "I"*(num%10)
  			end
  		end
  	end
  end
end

old_roman_numeral 1200
old_roman_numeral 1750
old_roman_numeral 2245
old_roman_numeral 1654
old_roman_numeral 1155
old_roman_numeral 2489