Symbols = {1000=>"M", 900=>"CM", 500=>"D", 400=>"CD",
      100=>"C", 90=>"XC", 50=>"L", 40=>"XL",
      10=>"X", 9=>"IX", 5=>"V", 4=>"IV",
      1=>"I"}

def roman_to_integer(roman)
  sum = 0
  str = roman.upcase
  Symbols.each do |k, v|
    while str.start_with?(v)
      sum += k
      str = str.slice(v.length, str.length)
    end
  end
  sum
end

puts roman_to_integer("p")
puts roman_to_integer("mcmxcix")
puts roman_to_integer("CCCLXV")
puts roman_to_integer("IV")
puts roman_to_integer("CIX")
