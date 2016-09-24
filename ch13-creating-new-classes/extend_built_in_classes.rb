class Integer
  def to_roman_numeral
    thous = (self / 1000)
    hunds = (self % 1000 / 100)
    tens = (self % 100 / 10)
    ones = (self % 10)
    
    roman = 'M' *  thous
    
    if hunds == 9
        roman = roman + 'CM'
    elsif hunds == 4
        roman = roman + 'CD'
    else
        roman = roman + 'D' * (self % 1000 / 500)
        roman = roman + 'C' * (self % 500 / 100)
    end
    
    if tens == 9
        roman = roman + 'XC'
    elsif tens ==4
        roman = roman + 'XL'
    else
        roman = roman + 'L' * (self % 100 / 50)
        roman = roman + 'X' * (self % 50 / 10)
    end
    
    if ones == 9
        roman = roman + 'IX'
    elsif ones == 4
        roman = roman + 'IV'
    else
        roman = roman + 'V' * (self % 10 / 5)
        roman = roman + 'I' * (self % 5 / 1)
    end
    roman
end
end

puts 12.to_roman_numeral
puts 2016.to_roman_numeral
puts 735.to_roman_numeral