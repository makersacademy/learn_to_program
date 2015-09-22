def roman number
	i_nu = 0
	if number > 0 && number != 5
		i_nu = "I" * number
	elsif number == 5
		i_nu = "V"
	elsif number > 5 && number < 10
	   i_nu = "V" + "I" * number/2
	end
end

number = gets.chomp.to_i
puts roman number