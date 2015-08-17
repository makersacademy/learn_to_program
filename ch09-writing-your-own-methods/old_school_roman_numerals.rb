def old_roman_numeral num

  roman_num = ''           # => ""

  roman_num = roman_num + 'M' * (num / 1000)        # => ""
  roman_num = roman_num + 'D' * (num % 1000 / 500)  # => "D"
  roman_num = roman_num + 'C' * (num % 500 / 100)   # => "DCCCC"
  roman_num = roman_num + 'L' * (num % 100 / 50)    # => "DCCCC"
  roman_num = roman_num + 'X' * (num % 50 / 10)     # => "DCCCCXXX"
  roman_num = roman_num + 'V' * (num % 10 / 5)      # => "DCCCCXXXV"
  roman_num = roman_num + 'I' * (num % 5 / 1)       # => "DCCCCXXXVII"

  roman_num  # => "DCCCCXXXVII"
end

old_roman_numeral 937  # => "DCCCCXXXVII"
