def roman_to_integer roman
    output = 0
  	array = {"CM" => 900, "M" => 1000, "CD" => 400, "D" => 500, "XC" => 90, "C" => 100, "XL" => 40, "L" => 50, "IX" => 9, "X" => 10, "IV" => 4, "V" => 5, "I" => 1 }
  	last_val = 1_000_000_000_000_000

  	while roman.length > 0
  		array.each do |k, v|
  			if roman.upcase[0, 2] == k || roman.upcase[0,1] == k
  				output += v
  				return "Rejected string" if v > last_val
  				last_val = v
  				roman = roman[(k.length)..-1]
  				break
  			end
  		end
  	end
  	output
end

