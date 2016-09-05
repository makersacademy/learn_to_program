def roman_numeral(num)
	rom_num_arr = num.to_s.split('').reverse
	final_arr = [singles(rom_num_arr[0].to_i), tens(rom_num_arr[1].to_i), hundreds(rom_num_arr[2].to_i), thousands(rom_num_arr[3].to_i)]
	final_arr.reverse.join
end


def singles(n)
	result_arr = []
	if (1..3).include? n
		n.times do result_arr << "I" end
	elsif n == 4
		result_arr << "IV"
	elsif (5..8).include? n
		result_arr << "V" && (n % 5 ).times do result_arr << "I" end
	elsif n == 9
		result_arr << "IX"
	end
	result_arr
end

def tens(n)
	result_arr = []
	if (1..3).include? n
		n.times do result_arr << "X" end
	elsif n == 4
		result_arr << "XL"
	elsif (5..8).include? n
		result_arr << "L" && (n % 5).times do result_arr << "X" end
	elsif n == 9
		result_arr << "XC"
	end
	result_arr
end


def hundreds(n)
	result_arr = []
	if (1..3).include? n
		n.times do result_arr << "C" end
	elsif n == 4
		result_arr << "CD"
	elsif (5..8).include? n
		result_arr << "D" && (n % 5).times do result_arr << "X" end
	elsif n == 9
		result_arr << "CM"
	end
	result_arr
end

def thousands(n)
	result_arr = []
	n.times do result_arr << "M" end
	result_arr
end
