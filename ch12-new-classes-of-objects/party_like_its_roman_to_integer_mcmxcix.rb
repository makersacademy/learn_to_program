def roman_to_integer roman
rom_numerals = {'m'=>1000 ,'d'=>500  , 'c'=>100  ,'l'=> 50  ,
   'x'=>10  , 'v'=>5 ,  'i' =>1}

total = 0
prev = 0
index = roman.length - 1
while index >= 0
c = roman[index].downcase
index = index - 1
val = rom_numerals[c]
if !val
puts "The number isn't valid. Please enter Roman Numeral:"
rom_num = gets.chomp
return roman_to_integer rom_num
end
  if val < prev
      val = val * -1
    else
      prev = val
    end
    total = total + val
  end

  total
end















