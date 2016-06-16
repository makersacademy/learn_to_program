def roman_numeral num
   
    roman_numerals = {1000 => "M", 500=> "D", 100=> "C",
                            50=> "L", 10=> "X", 9=>"IX", 
                            5=> "V",4=> "IV", 1=> "I"}
    
    roman = ''
    
    roman_numerals.each do |key, value|
      (num/key).times{roman << value; num -= key}
    end
    
    roman

end