class Integer
  def roman_numeral
    thousands = self/1000
    hundreds = self % 1000 / 100
    tens = self % 100 / 10
    ones = self % 10

    roman = ''
    roman << 'M' * thousands

    if hundreds == 4
      roman << 'CD'
    elsif hundreds == 9
      roman << 'CM'
    else
      roman << 'D' * (self % 1000 / 500)
      roman << 'C' * (self % 500 / 100)
    end

    if tens == 4
      roman << 'XL'
    elsif tens == 9
      roman << 'XC'
    else
      roman << 'L' * (self % 100 / 50)
      roman << 'X' * (self % 50 / 10)
    end

    if  ones == 4
      roman << 'IV'
    elsif ones == 9
      roman << 'IX'
    else
      roman << 'V' * (self % 10 / 5)
      roman << 'I' * (self % 5)
    end
  roman
  end
end

puts 194.roman_numeral
