def roman_to_integer roman

  single_romans =
       {
        "M" => 1000,
        "D" => 500,
        "C" => 100,
        "L" => 50,
        "X" => 10,
        "V" => 5,
        "I" => 1
      }

  double_romans =
      {
        "CM" => 900,
        "CD" => 400,
        "XC" => 90,
        "XL" => 40,
        "IX" => 9,
        "IV" => 4
      }

#Here I have replaced all new romans with old romans, so I can take one
#letter at a time, and then work from left to right.

roman = roman.upcase # This is to convert all to uppercase, so that it can recognise all.

result = 0 # After converting the roman numerals, we then add them to this total
split_array = roman.chars #split the array into single characters

split_array.each do |key|
  unless single_romans.include?(key)
    puts "Not a valid roman numeral"
end
end #here this searches for an invalid roman numeral

while roman.length > 0 #Here we search for doubles first, and add to rseult
  double_romans.each do |key,value|
    if roman.include?(key)
      result += value
      roman.slice!(key) # takes away from the original roman numeral
    end
end

      roman.length > 0 #Here we search for singles, and add to result
      single_romans.each do |key,value|
        if roman.include?(key)
      result += value
      roman.slice!(key) # takes away from the original roman numeral
    end
end
end

result
end
