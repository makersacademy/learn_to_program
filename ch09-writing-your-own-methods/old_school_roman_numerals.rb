def old_roman_numeral num
    romanNumeral = ""
    
    romanNumeral = romanNumeral + "M" * (num / 1000)
    romanNumeral = romanNumeral + "D" * (num % 1000 / 500)
    romanNumeral = romanNumeral + "C" * (num % 500 / 100)
    romanNumeral = romanNumeral + "L" * (num % 100 / 50)
    romanNumeral = romanNumeral + "X" * (num % 50 / 10)
    romanNumeral = romanNumeral + "V" * (num % 10 / 5)
    romanNumeral = romanNumeral + "I" * (num % 5)
    
    return romanNumeral
end

