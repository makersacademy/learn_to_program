def roman_to_integer(roman)
   roman = roman.upcase
   integer = 0

   if roman =~ (/[^MDCLXVI]/)
      return "This is not a valid Roman numeral!"
   end

single = {"M"  => 1000,
          "D"  => 500,
          "C"  => 100,
          "L"  => 50,
          "X"  => 10,
          "V"  => 5,
          "I"  => 1}


double = {"CM" => 900,
          "CD" => 400,
          "XC" => 90,
          "XL" => 40,
          "IX" => 9,
          "IV" => 4}

while roman.length > 0
   double.each do | key, val |
      if roman.include?(key)
         integer += val
         roman.slice!(key)
      end
   end
   single.each do | key, val |
      if roman.include?(key)
         integer += val
         roman.slice!(key)
      end
   end
end
integer
end

puts roman_to_integer("CCCLXV")
