def roman_numeral num
    roman = ""
    roman = roman + "M" * (num / 1000)
    
    if (900..999) === (num % 1000)
        roman = roman + "CM"
        elsif (400..499) === (num  % 500)
        roman = roman + "CD"
        else
        roman = roman + "D" * ((num % 1000) / 500)
        roman = roman + "C" * ((num % 500) / 100)
    end
    if (90..99) === (num % 100)
        roman = roman + "XC"
        elsif
        (40..49) === (num % 50)
        roman = roman + "XL"
        else
        roman = roman + "L" * ((num % 100) / 50)
        roman = roman + "X" * ((num % 50) / 10)
    end
    if (num % 10) == 9
        roman = roman + "IX"
        elsif (num % 5) == 4
        roman = roman + "IV"
        else
        roman = roman + "V" * ((num % 10) / 5)
        roman = roman + "I" * ((num % 5) / 1)
    end
    roman
end
