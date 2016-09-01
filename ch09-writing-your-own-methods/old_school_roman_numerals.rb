def old_roman_numerals(num)

	$res_arr = []

	def zero_to_four(sin)
		sin.times do
		$res_arr << "I"
		end
	end	
	
	def fives(fiv)
		$res_arr << "V"
		zero_to_four(fiv % 5)
	end

	def tens(tn)
		(tn/10).times do 
			$res_arr << "X"
		end
		zero_to_four(tn % 10)
	end

	if num < 5
		zero_to_four(num)

	elsif (5..9).include? num
		fives(num)
	elsif (10..49)
		tens(num)

	end


p $res_arr.join
end
