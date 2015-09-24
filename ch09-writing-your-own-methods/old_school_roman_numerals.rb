def old_roman_numeral(num)
    
    raise 'Must use positive integer lesser than 3000.' if num <= 0 || num > 3000
    
    roman_num = ''
    
    roman_num = roman_num + 'M' * (num / 1000)
    roman_num = roman_num + 'D' * ((num % 1000) / 500)
    roman_num = roman_num + 'C' * (num / 100)
    roman_num = roman_num + 'L' * ((num % 100) / 50)
    roman_num = roman_num + 'X' * (num / 10)
    roman_num = roman_num + 'V' * (num % 10) / 5))
    roman_num = roman_num + 'I' * (num % 5) / 1 ))
    
    roman_num
end

old_roman_numeral(2753)