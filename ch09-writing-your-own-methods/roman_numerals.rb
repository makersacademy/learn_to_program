def roman_numeral num
  numerals = {
    1    => "I",
    4    => "IV",
    5    => "V",
    9    => "IX",
    10   => "X",
    40   => "XL",
    50   => "L",
    90   => "XC",
    100  => "C",
    400  => "CD",
    500  => "D",
    900  => "CM",
    1000 => "M"
  }

    roman_num = ''
      numerals.reverse_each do |k, v|
        while num >= k
          num -= k
          roman_num += v
        end
      end
    roman_num
end
