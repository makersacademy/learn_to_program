def old_roman_numeral num
  roman_hash = {
    1000 => "M",
     500 => "D",
     100 => "C",
      50 => "L",
      10 => "X",
        5 => "V",
        1 => "I",
    }

    roman_numeral = ""
    roman_hash.each do |value, letter|
      roman_numeral << letter * (num / value)
      num = num % value
    end
    return roman_numeral
end                                            # => :old_roman_numeral
