def roman number
	i_m = 0
	i_c = 0
	i_d = 0
	i_x = 0
	i_l = 0
	i_i = 0
	nl = number.length
	number = number.to_i
	if nl == 4
		i_m = "M" * (number/1000)
		number = number%1000
	end
	if nl == 3 && number != 500
		i_c = "C" * (number/100)
		number = number%100
	elsif number == 500
		i_d = "D"
		number = number%500
	end
	if nl == 2 && number != 50
		i_x = "X" * (number/10)
		number = number%10
	elsif number == 50
		i_l = "L"
		number = number%50
	end
	if nl == 1 && number > 5
		i_i = "I" * (number - 5)
	elsif number < 5
		i_i = "I" * number
	else 
		i_i = "v"
	end
	puts "your roman number is: #{i_m}#{i_c}#{i_d}#{i_x}#{i_l}#{i_i}"
end

number = gets.chomp 
puts roman number