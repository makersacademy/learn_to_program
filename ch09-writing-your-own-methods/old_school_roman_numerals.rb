def roman_numeral num
  numerals = {
    1    => "I",
    5    => "V",
    10   => "X",
    50   => "L",
    100  => "C",
    500  => "D",
    1000 => "M"
  }
    roman_num = ""
      numerals.reverse_each do |k, v|
        while num >= k
          num -= k
          roman_num += v
        end
      end
    roman_num
end
