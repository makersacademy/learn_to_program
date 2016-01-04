def old_roman_numeral num
  dic = {1 => "I", 5 => "V", 10 => "X", 50 => "L", 100 => "C", 500 => "D", 1000 => "M"}
  return dic[num] if dic.has_key?(num)
  dig = num.to_s.chars.reverse
  "#{dig[3].to_i < 5 ? dic[1000] * (dig[3].to_i) : dic[1000] * (dig[3].to_i)}"+
  "#{dig[2].to_i < 5 ? dic[100] * (dig[2].to_i) : dic[500] + dic[100] * (dig[2].to_i - 5)}"+
  "#{dig[1].to_i < 5 ? dic[10] * (dig[1].to_i) : dic[50] + dic[10] * (dig[1].to_i - 5)}"+
  "#{dig[0].to_i < 5 ? dic[1] * (dig[0].to_i) : dic[5] + dic[1] * (dig[0].to_i % 5)}"
end







# "#{dic[1000] * (num/1000) }"+"#{dic[100] * ((num%1000)/100)}"+"#{dic[10] * ((num%100)/10)}"+"#{dic[1] * (num%10)}"
