def roman_to_integer roman
  return "Sorry, that is not a roman numeral" if roman =~ (/[^MDCLXVI]/i)
  roman = roman.upcase
  result = 0
  special = {"CM" => 900, "CD" => 400, "XC" => 90, "XL" => 40, "IX" => 9, "IV" => 4}
  numeral = {"M"=> 1000, "D" => 500, "C" => 100, "L" => 50, "X" => 10, "V" => 5, "I" => 1}
  special.each { |k,v|
    if roman.include?(k)
      result = result + v
      roman.gsub!(/#{k}/, "")
    end}
  roman.each_char {|v|
    if numeral.keys.include?(v)
      result = result + numeral[v]
    end}
  return result
end
