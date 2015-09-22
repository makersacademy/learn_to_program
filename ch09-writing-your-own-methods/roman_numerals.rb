def roman_numeral num
	i_m = ''
	i_c = ''
	i_x = ''
	i_i = ''
	nl = num.length
	n = num.to_i
	while nl > 0
	 if nl == 4
		i_m = "M" * (n/1000)
		n = n%1000
	 end
	 if (nl == 3 && n < 90) && (n >= 500 && n < 1000)
		i_c = "D" + "C" * ((n-500)/100)
		n = n%100
	 elsif nl == 3 && n < 500
		i_c = "C" * (n/100)
		n = n%100
	 elsif nl == 2 && n >= 900
	 	i_c = "C" + "M"
	 	n = n%100
	 end
	 if (nl == 2 && n < 90) && (n >= 50 && n < 100)
		i_x = "L" + "X" * ((n-50)/10)
		n = n%10
	 elsif nl == 2 && n < 50
		i_x = "X" * (n/10)
		n = n%10
	 elsif nl == 2 && n >= 90
		i_x = "X" + "C"
		n = n%10 
	 end
	 if nl == 1 && (n >= 5 && n < 9)
		i_i = "V" + "I" * (n - 5)
	 elsif n < 5 && n != 4 
		i_i = "I" * n
	 elsif n = 4
	 	i_i = "I" + "V"
	 elsif nl == 1 && n == 9
		i_i = "I" + "X"	
	 end
	nl -= 1
    end
	puts "your roman number is: #{i_m}#{i_c}#{i_x}#{i_i}."
end
puts "Write the number that you want to convert:"
num = gets.chomp 
puts roman_numeral num