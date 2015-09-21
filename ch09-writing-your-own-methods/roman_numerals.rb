def roman_numeral num
 if !(num.to_i > 0) || num.to_i-num != 0
  		puts "Please enter an integer greater than zero"
  else

	  m = num/1000
	  d = (num%1000)/500
	  c = (num%500)/100
	  l = (num%100)/50
	  x = (num%50)/10
	  v = (num%10)/5
	  i = num%5

	  thousands = "M"*m

	  if (num%1000)/100 == 9
	  	hundreds = "CM"
	  elsif (num%1000)/100 == 4
	  	hundreds = "CD"
	  else
	  	hundreds = "D"*d + "C"*c
	  end

	  if (num%100)/10 == 9
	  	tens = "XC"
	  elsif (num%100)/10 == 4
	  	tens = "XL"
	  else
	  	tens = "L"*l + "X"*x
	  end

	  if (num%10) == 9
	  	units = "IX"
	  elsif (num%10) == 4
	  	units = "IV"
	  else
	  	units = "V"*v + "I"*i
	  end

	  puts (thousands+hundreds+tens+units)

  end
end


roman_numeral 4
roman_numeral 356
roman_numeral 12
roman_numeral 1
roman_numeral (-35)
roman_numeral "Pig"
roman_numeral (45.6)
roman_numeral 3457
roman_numeral 1983
roman_numeral 3999
roman_numeral 2749
