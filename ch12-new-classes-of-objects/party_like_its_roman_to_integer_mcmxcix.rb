def roman_to_integer roman
  roman.upcase!# your code here
  special_values = { "CM" => 900, "CD" => 400, "XC" => 90, "XL" => 40, "IX" => 9, "IV" => 4 }
  values = { "M" => 1000, "D" => 500, "C" => 100, "L" => 50, "X" => 10, "V" => 5, "I" => 1 }
  score = 0
  special_values.each do |x_roman, v_alue|
    score += v_alue if roman.include?(x_roman)
    roman.gsub!(x_roman,'')
  end
  roman.each_char {|x| score += values[x]}
  #puts score
  return score
end

#roman_to_integer("XI")
#roman_to_integer("MCMXCIX")