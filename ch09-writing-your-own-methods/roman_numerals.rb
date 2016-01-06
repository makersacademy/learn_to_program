def roman_numeral num

	roman_numerals = {
    1000 => "M",  
     900 => "CM",  
     500 => "D",  
     400 => "CD",
     100 => "C",  
      90 => "XC",  
      50 => "L",  
      40 => "XL",  
      10 => "X",  
        9 => "IX",  
        5 => "V",  
        4 => "IV",  
        1 => "I",  
    }

  	to_return = ""
  	roman_numerals.each do | number, letter |
  		to_return << letter*(num/number)
  		num = num % number
  	end
  	to_return
end
