def old_roman_numeral num
    if (num < 0 || num > 3000)
       puts 'number is out of range'
    end
    m = 'M' * (num / 1000)
    d = 'D' * ((num % 1000)/500)
    c = 'C' * ((num % 500)/100)
    l = 'L' * ((num % 100)/50)
    x = 'X' * ((num % 50)/10)
    v = 'V' * ((num % 10)/5)
    i = 'I' * ((num % 5)/1)
    return m+d+c+l+x+v+i
end

old_roman_numeral 99
