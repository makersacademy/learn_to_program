def old_roman_numeral num

thousand = 'M' * (num / 1000)
fivehundreds = thousand + 'D' * (num % 1000 / 500)
hundreds = fivehundreds + 'C' * (num % 500 / 100)
fifties = hundreds + 'L' * (num % 100 / 50)
tenth = fifties + 'X' * (num % 50 / 10)
fifth = tenth + 'V' * (num % 10 / 5)
units = fifth + 'I' * (num % 5 / 1)

units

end
