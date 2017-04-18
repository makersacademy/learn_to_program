def old_roman_numeral(num)
	
	values = {"M" => 1000,"D" => 500,"C" => 100,"L" => 50,"X" => 10,"V" => 5,"I" => 1}
	romanstr = ""
	while (num != 0)
		values.each do |k,v|
			romanstr << k*(num/v)
			num = num %v
		end
	end
	return romanstr
		
  
end

old_roman_numeral(120)