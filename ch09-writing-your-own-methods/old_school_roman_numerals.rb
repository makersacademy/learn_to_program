def old_roman_numeral num
   
   #mapping the roman numberals in a hash
    roman_numerals_old = {1000 => "M", 500=> "D", 100=> "C",
                            50=> "L", 10=> "X", 5=> "V", 1=> "I"}
    
    #variable to include the numberals
    roman_old = ''
    roman_numerals_old.each do |key, value|
      (num/key).times{roman_old << value; num -= key}
    end
    roman_old

end