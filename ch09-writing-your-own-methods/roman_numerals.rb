def roman number
	i_m = ''
	i_c = ''
	i_x = ''
	i_i = ''
	nl = number.length
	n = number.to_i
	while nl > 0
	 if nl == 4
		i_m = "M" * (n/1000)
		n = n%1000
	 end
	 if nl == 3 && n != 500
		i_c = "C" * (n/100)
		n = n%100
	 elsif nl == 3 && n == 500
		i_c = "D"
		n = n%500
	 end
	 if nl == 2 && n != 50
		i_x = "X" * (n/10)
		n = n%10
	 elsif nl == 2 && n == 50
		i_x = "L"
		n = n%50
	 end
	 if nl == 1 && (n > 5 && n < 10)
		i_i ="I" * (n - 6) + "X"
	 elsif n == 5
		i_i = "V"
	 elsif n < 5
		i_i = "I" * n
	 end
	nl -= 1
    end
	puts "your roman number is: #{i_m}#{i_c}#{i_x}#{i_i}."
end
puts "Write the number that you want to convert:"
number = gets.chomp 
puts roman number