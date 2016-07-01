def roman_to_integer roman
   roman_numerals = {'i' => 1,
                     'v' => 5,
                     'x' => 10,
                     'l' => 50,
                     'c' => 100,
                     'd' => 500,
                     'm' => 1000}
   
   total = 0
   previous = 0
   
   roman.reverse.each_char do |char|
   character = char.downcase
   value = roman_numerals[character]
   
   if value < previous 
     value *= -1
   else
    previous = value
   end
   total += value
  end
  
  total
end