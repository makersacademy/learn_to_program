def roman_to_integer roman
  roman_values = {
     'I' => 1,
     'V' => 5,
     'X' => 10,
     'L' => 50,
     'C' => 100,
     'D' => 500,
     'M' => 1000}

    total = 0
    prev_t = 0
    roman = roman.upcase

    position = roman.length
    position = position -1
    while position >= 0
      x = roman[position]
      position = position - 1
      int = roman_values[x]

     if !int
       puts "Please enter a valid roman numeral"
       return
     end
     if int < prev_t
       int = int * -1
     else
       prev_t = int
   end
   total = total + int
  end
  total
end
