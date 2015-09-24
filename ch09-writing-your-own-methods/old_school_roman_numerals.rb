def old_roman_numeral(num)
    
    roman_num = ''
    
    while 1 < num < 3000
        
        roman_num = roman_num + 'M' * (num / 1000)
        roman_num = roman_num + 'D' * (num % 1000 / 500)
        roman_num = roman_num + 'C' * (num % 100)
        roman_num = roman_num + 'L' * (num % 100 /50)
        roman_num = roman_num + 'X' * (num % 10)
        roman_num = roman_num + 'V' * (num % 10) /5)
        roman_num = roman_num + 'I' * (num % 5) /1 )
        
    else
        puts 'Please enter an integer between 1 and 3000.'
    end
end    

puts (old_roman_numeral(2753))