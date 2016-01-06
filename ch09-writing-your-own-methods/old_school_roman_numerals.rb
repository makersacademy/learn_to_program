def old_roman_numeral num
  numeral_to_print = ''

    if num == 0
      numeral_to_print << 'Zero'
    else
      numeral_to_print << 'M' * (num/1000)
      numeral_to_print << 'D' * (num % 1000 / 500)
      numeral_to_print << 'C' * (num % 500 / 100)
      numeral_to_print << 'L' * (num % 100 / 50)
      numeral_to_print << 'X' * (num % 50 / 10)
      numeral_to_print << 'V' * (num % 10 / 5)
      numeral_to_print << 'I' * (num % 5)
    end

  return numeral_to_print

end
