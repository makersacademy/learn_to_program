def roman_to_integer(roman)
  pairs = { "M" => 1000,
            "D" => 500,
            "C" => 100,
            "L" => 50,
            "X" => 10,
            "V" => 5,
            "I" => 1}
  old_number = roman.upcase.gsub(/IV/,"IIII").gsub(/IX/,"VIIII").gsub(/XL/,"XXXX").gsub(/XC/,"LXXXX").gsub(/CD/,"CCCC").gsub(/CM/,"DCCCC")

  arr = old_number.chars
  num = []
  arr.each do |char|
    num << pairs[char]
  end
  num.inject { |memo, n| memo + n }
  #puts num.sort.inspect
end
#puts roman_to_integer("mcmxcix")
#puts roman_to_integer("XIX")
