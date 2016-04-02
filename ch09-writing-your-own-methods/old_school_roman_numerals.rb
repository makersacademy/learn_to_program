def old_roman_numeral num
  # your code here
  roman =''
  roman_map = { 1000 => "M",
                500 => "D",
                100 => "C",
                50 => "L",
                10 => "X",
                5 => "V",
                1 => "I"
                }

      roman_map.each do |value, letters|
        while value <= num
            roman << letters
            num -= value
        end
      end
      roman;
    		  	
end

