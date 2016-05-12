def roman_numeral num
  romans = {
     1000 => "M",
      900 => "CM",
      500 => "D",
      400 => "CD",
      100 => "C",
       90 => "XC",
       50 => "L",
       40 => "XL",
       10 => "X",
         9 => "IX",
         5 => "V",
         4 => "IV",
         1 => "I",
   }

   n = num
   roman = ""
   romans.each do |eng, roman_letter|
     roman << roman_letter * (n / eng)
     n = n % eng
   end
   return roman

end
