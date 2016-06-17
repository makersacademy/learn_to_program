# I =1 V=5 X=10 L=50 C=100 D=500 M=1000

def roman_to_integer roman
  roman = roman.upcase.gsub(/IV/, 'IIII').gsub(/IX/, 'VIIII').gsub(/XL/, 'XXXX').gsub(/XC/, 'LXXXX').gsub(/CD/, 'CCCC').gsub(/CM/, 'DCCCC')
  # puts roman
  romans_numbers = {  "M" => 1000,  "D" => 500,
                      "C" => 100,   "L" => 50,
                      "X" => 10,    "V" => 5,
                      "I" => 1 }
  numbers = []
  roman_arr = roman.chars
   roman_arr.inspect
    roman_arr.each do |r|
      numbers << romans_numbers[r]
    end
  # puts numbers.inspect
  # numbers.inject(0){ |memo, n| memo + n }
  numbers.inject(0, :+)
end

roman_to_integer("MMMCCVIII")
roman_to_integer("IV")
roman_to_integer("ix")
roman_to_integer("I")
