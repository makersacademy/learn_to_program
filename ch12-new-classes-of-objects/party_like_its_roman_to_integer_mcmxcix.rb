def roman_to_integer roman
values = {
  "M"=> 1000,
  "D"=>500,
  "C"=>100,
  "L"=>50,
  "X"=>10,
  "V"=>5,
  "I"=>1
}
#if roman.include?"m" ||roman.include?"d" || roman.include?"c" || roman.include?"l" || roman.include?"x" || roman.include?"v"|| roman.include?"i" == false puts "sum romana! soli numeri romani conosco"
arr = roman.upcase.chars
num = []

arr.each do |char|
  num << values[char]
end
num.inject { |memo, n| memo +n}
end

puts(roman_to_integer("mcmxcix"))
puts(roman_to_integer("CCCLXV"))
