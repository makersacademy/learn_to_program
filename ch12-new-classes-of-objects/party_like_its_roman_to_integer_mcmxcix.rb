def roman_to_integer roman

  roman_numbers = { 'M' => 1000 , 'CM' => 900 , 'D' => 500 , 'CD' => 400 , 'C' => 100 , 'XC' => 90 , 'L' => 50 , 'XL' => 40 , 'X' => 10 , 'IX' => 9 , 'V' => 5, 'IV' => 4 , 'I' => 1 }
  roman_to_parse = roman.upcase
  converted_number = 0

  while roman_to_parse.length > 0
    roman_numbers.each_pair do |key, value|
      if roman_to_parse.slice(0,key.length) == key 
        converted_number += value
        roman_to_parse.slice!(0,key.length)
      end
    end  
  end
  
  converted_number
end