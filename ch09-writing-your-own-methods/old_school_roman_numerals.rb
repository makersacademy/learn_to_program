def old_roman_numeral num
     roman_number = ""
    while num != 0
        if num % 1000 == 0
            num -= 1000
            roman_number += "M"
            next
        elsif num % 500 == 0
            num -= 500
            roman_number += "D"
            next
        elsif num % 100 == 0
            num -= 100
            roman_number += "C"
            next
        elsif num % 50 == 0
            num -= 50
            roman_number += "L"
            next
        elsif num % 10 == 0
            num -= 10
            roman_number += "X"
            next
        elsif num % 5 == 0
            num -= 5
            roman_number += "V"
            next
        else
            num -= 1
            roman_number += "I"
        end
    end
    roman_number.reverse
end
