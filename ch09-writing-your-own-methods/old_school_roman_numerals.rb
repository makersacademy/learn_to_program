def old_roman_numeral num
	numerals = {"I" => 1,"V" => 5,"X" => 10,"L" => 50,"C" => 100,"D" => 500,"M" => 1000}
	numerals.sort_by{|k,v| -v}.inject(""){|sum,(k,v)| 
		i = num/v
		num -= v*i
		sum << k*i
	}
end