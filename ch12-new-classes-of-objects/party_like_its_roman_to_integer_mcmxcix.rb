
def roman_to_number(roman)

	conversion1 = {
    1000 => "M",
     500 => "D",
     100 => "C",
      50 => "L",
      10 => "X",
       5 => "V",
       1 => "I",
  		}

  	conversion2 = {
  		 900 => "CM",
  		 400 => "CD",
  		 90 => "XC",
  		 40 => "XL",
  		 9 => "IX",
		}

	roman = roman.upcase
	number = 0

	conversion2.each do |k,v|
		if roman.include?(v)
			number += k
			roman.slice!(v)
		end

	end

	until roman.length == 0

		conversion1.each do |k,v|

			if roman.include?(v)
				number += k
				roman.slice!(v)
			end

		end

	end

	number
end
