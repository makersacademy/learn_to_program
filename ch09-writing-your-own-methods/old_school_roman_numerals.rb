def old_roman_numerals(numbers)
	rom_num_arr = numbers.to_s.split('').reverse
	final_arr = [singles(rom_num_arr[0].to_i), tens(rom_num_arr[1].to_i), hundreds(rom_num_arr[2].to_i), thousands(rom_num_arr[3].to_i)]
	final_arr.reverse.join
end

def singles(sn)
	sin_arr = []
	if sn == 0
		sin_arr
	else
		sn > 4 == true ? ( sin_arr << "V" && (sn % 5).times do sin_arr << "I" end ) : ((sn % 5).times do sin_arr << "I" end)
    end
	sin_arr.join
end

def tens(tn)
	tn_arr = []
	tn > 4 == true ? (tn_arr << "L" && (tn % 5).times do tn_arr << "X" end ) : (tn.times do tn_arr << "X" end)
	tn_arr.join
end

def hundreds(hn)
	hun_arr = []
	hn > 4 == true ? (hun_arr << "D" && (hn % 5).times do hun_arr << "C" end ) : (hn.times do hun_arr << "C" end)
	hun_arr.join
end

def thousands(th)
	thu_arr = []
	th.times do thu_arr << "M" end
	thu_arr.join
end