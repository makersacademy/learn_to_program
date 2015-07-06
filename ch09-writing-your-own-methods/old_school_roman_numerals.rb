def old_roman_numeral num
  numerals = {1000 => "M",
              500 => "D",
              100 => "C",
              50 => "L",
              10 => "X",
              5 => "V",
              1 => "I"}
  roman_num = ""
  numerals.each_key do |k|
    x = num / k
    roman_num += "#{numerals[k]}" * x
    rem = num % k.to_i
    num = rem
  end
  roman_num
end

