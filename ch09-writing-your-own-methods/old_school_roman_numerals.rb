def old_roman_numeral num
  numerals = {1000 => "M", 500 => "D", 100 => "C", 50 => "L", 10 => "X", 5 => "V", 1 => "I"}
  roman_num = ""
  numerals.each_key do |k|
    x = num / k
    if x == 4
      roman_num +=
    elsif x == 9
      roman_num +=
    else
      roman_num += "#{numerals[k]}" * x
    end
    rem = num % k.to_i
    num = rem
  end
  roman_num
end

