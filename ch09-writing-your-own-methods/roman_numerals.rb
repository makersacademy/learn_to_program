def roman_numeral num
  romanNumeral = ""
    
    thousands = (num / 1000)
    hundreds = (num % 1000 / 100)
    tens = (num % 100 / 10)
    ones = (num % 10)
    
    romanNumeral << ("M" * thousands)
    
    if hundreds == 9
        romanNumeral << "CM"
    elsif hundreds == 4
        romanNumeral << "CD"
    else
        romanNumeral << ("D" * (num % 1000 / 500))
        romanNumeral << ("C" * (num % 500 / 100))
    end
    
    if tens == 9
        romanNumeral << "XC"
    elsif tens == 4
        romanNumeral << "XL"
    else
        romanNumeral << ("L" * (num % 100 / 50))
        romanNumeral << ("X" * (num % 50 / 10))
    end
    
    if ones == 9
        romanNumeral << "IX"
    elsif ones == 4
        romanNumeral << "IV"
    else
        romanNumeral << ("V" * (num % 10 / 5))
        romanNumeral << ("I" * (num % 5))
    end
    
    return romanNumeral
end