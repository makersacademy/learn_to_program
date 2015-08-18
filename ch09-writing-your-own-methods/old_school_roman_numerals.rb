def old_roman_numeral num
  if not num.to_i > 0
  		puts "Please enter a number greater than zero"
  else
	  m = num/1000
	  d = (num%1000)/500
	  c = (num%500)/100
	  l = (num%100)/50
	  x = (num%50)/10
	  v = (num%10)/5
	  i = num%5

	  puts ("M"*m + "D"*d + "C"*c + "L"*l + "X"*x + "V"*v + "I"*i)
  end
end


old_roman_numeral 4
old_roman_numeral 356
old_roman_numeral 12
old_roman_numeral 1
old_roman_numeral (-35)
old_roman_numeral "Pig"
old_roman_numeral 3457
old_roman_numeral 1983
