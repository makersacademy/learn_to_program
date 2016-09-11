def roman_to_integer(roman)
   
   roman = roman.upcase
 
   return 0 if roman == "NULLA"
   numerals = { M: 1000,
                D: 500,
                C: 100,
                L: 50,
                X: 10,
                V: 5,
                I: 1 }
                
number = 0
previous_value = 0
 
i = roman.length - 1
    while i >= 0
    value = numerals[roman[i].to_sym]
     return "Not a valid roman numeral" if value.nil?
       if value >= previous_value
       number += value
       else
       number -= value
       end
     previous_value = value
     i -= 1
    end
    number
end