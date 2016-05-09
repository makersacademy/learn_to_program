def old_roman_numeral(num)
	
	values = {"M" => 1000,"D" => 500,"C" => 100,"L" => 50,"X" => 10,"V" => 5,"I" => 1}
	romanstr = ""
	values.each do |k,v|
		romanstr << k*(num/v)
		num = num %v
	end
	romanstr
		
  
end