def roman_to_integer roman
	roman.upcase!
	possible_chars = ["C","M","D","X","L","I","V"]
	if roman.chars.all? {|char| possible_chars.any? {|compar| char.upcase == compar} }
		int_count = 0
		until roman == ""
			case 
			when roman.upcase.include?("CM")
			int_count += 900
			roman.slice! "CM"
			when roman.upcase.include?("CD")
			int_count += 400
			roman.slice! "CD"
			when roman.upcase.include?("XC")
			int_count += 90
			roman.slice! "XC"
			when roman.upcase.include?("XL")
			int_count += 40
			roman.slice! "XL"
			when roman.upcase.include?("IX")
			int_count += 9
			roman.slice! "IX"
			when roman.upcase.include?("IV")
			int_count += 4
			roman.slice! "IV"
			when roman.upcase.include?("M")
			int_count += 1000
			roman.sub!("M","")
			when roman.upcase.include?("D")
			int_count += 500
			roman.sub!("D","")
			when roman.upcase.include?("C")
			int_count += 100
			roman.sub!("C","")
			when roman.upcase.include?("L")
			int_count += 50
			roman.sub!("L","")
			when roman.upcase.include?("X")
			int_count += 10
			roman.sub!("X","")
			when roman.upcase.include?("V")
			int_count += 5
			roman.sub!("V","")
			when roman.upcase.include?("I")
			int_count += 1
			roman.sub!("I","")
			end
			print 
		end
	else
	"Please only use roman numerals"
	end
	return int_count
end