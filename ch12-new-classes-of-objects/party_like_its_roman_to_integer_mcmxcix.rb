def roman_to_integer(roman)
  roman_nums = {'i' => 1,
                'v' => 5,
                'x' => 10,
                'l' => 50,
                'c' => 100,
                'd' => 500,
                'm' => 1000}

  exceptional_numbers = {
                'iv' => 4,
                'ix' => 9,
                'xl' => 40,
                'xc' => 90,
                'cd' => 400,
                'cm' => 900}

#  a = "A"
#  => "A"
# 2.2.1 :011 > a == a.upcase
if roman == roman.upcase
    roman = roman.downcase
end
letters = roman.split("")
return "Not a valid roman numeral" unless letters.all?{|letter| roman_nums.keys.include?(letter)}
exceptions = []
leftovers = []
exceptions << exceptional_numbers.keys.select{|key| roman.include?(key)}.reverse
  if exceptions != [[]]
    result = exceptions.flatten.map { |number| exceptional_numbers.fetch(number)}.reduce(:+)
    return result if exceptions.join == roman
  end
    leftovers << roman.sub(exceptions.join,"").split("")
    leftovers.flatten.map{|letter| roman_nums.fetch (letter)}.reduce(:+) + result.to_i
end


# [
# ["IV", 4],
#   ["II", 2],
#   ["VI", 6],
#   ["VAA", "Not a valid roman numeral"],
#   ["XVII", 17],
#   ["XXI", 21],
#   ["XXIV", 24],
#   ["XL", 40],
#   ["XLIX", 49],
#  ["LXXVII", 77],
#  ["XC", 90],
#  ["XCIX", 99],
#  ["C", 100],
#  ["CXCIX", 199],
#  ["CXCAX", "Not a valid roman numeral"],
#  ["CXXIII", 123],
#  ["CCLVI", 256],
#  ["CDLXXVII", 477],
#  ["CDXCIX", 499],
#   ["D", 500],
#  ["DIX", 509],
#   ["DC", 600],
#  ["DCCVI", 706],
#   ["CMXXXIII", 933],
#  ["CML", 950],
#  ["MXI", 1011],
#  ["MCI", 1101],
#  ["MCMXCIX", 1999],
#  ["MMMCMXL", 3940],
#  ["ix", 9]
#  ].each do |(input, expectation)|
#   result = roman_to_integer(input)
#   puts "#{input} should result in #{expectation} but resulted in #{result}" if result != expectation
#   #p "#{input} correctly resulted in #{expectation}"
#   print "."
# end
