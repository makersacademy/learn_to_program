def old_roman_numeral num
	x = self
	roman = “”
	NUM_ROM.each do |n, l|
		roman << l * (x / n)
		x = x % n
	end
	return roman
end


NUM_ROM = {
	1000 => “M”,
	 500 => “D”, 
	 100 => “C”,
	  50 => “L”,
	  10 => “X”,
	   5 => “V”,
	   1 => “I”
		     }

