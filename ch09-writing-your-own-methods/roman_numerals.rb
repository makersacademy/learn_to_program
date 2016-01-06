def roman_numeral num
    numeral_to_print = ''

      if num == 0
        numeral_to_print << 'Zero'
      end

    thousands = (num/1000)
    hundreds = (num % 1000 / 100)
    tens = (num % 100 / 10)
    ones = (num % 10)

    numeral_to_print << 'M' * (num/1000)

      if hundreds == 9
        numeral_to_print << 'CM'
      elsif hundreds == 4
          numeral_to_print << 'CD'
      else
        numeral_to_print << 'D' * (num % 1000 / 500)
        numeral_to_print << 'C' * (num % 500 / 100)
      end

      if tens == 9
        numeral_to_print << 'XC'
      elsif tens == 4
        numeral_to_print << 'XL'
      else
        numeral_to_print << 'L' * (num % 100 / 50)
        numeral_to_print << 'X' * (num % 50 / 10)
      end

      if ones == 9
        numeral_to_print << 'IX'
      elsif ones == 4
        numeral_to_print << 'IV'
      else
        numeral_to_print << 'V' * (num % 10 / 5)
        numeral_to_print << 'I' * (num % 5)
      end

    return numeral_to_print

end
