def roman_numeral num
  	roman_num = ""

	roman_num << "M"*(num/1000)
	

	if num%1000 == 900
		roman_num << "CM"
	elsif num%10 == 400
		roman_num << "CD"
	else
		roman_num << "D"*(num%1000/500)
		roman_num << "C"*(num%500/100)
	end

	if num%100 == 90
		roman_num << "XC"
	elsif num%10 == 40
		roman_num << "XL"
	else
		roman_num << "L"*(num%100/50)
		roman_num << "X"*(num%50/10)
	end

	if num%10 == 9
		roman_num << "IX"
	elsif num%10 == 4
		roman_num << "IV"
	else
		roman_num << "V"*(num%10/5)
		roman_num << "I"*(num%5)
	end
end