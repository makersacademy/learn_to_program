def roman_to_integer roman
  # your code here
  
  numb = {"M" => 1000, "CM" => 900, "D" => 500, "CD" => 400,
          "C" => 100,  "XC" => 90,  "L" => 50,  "XL" => 40,
          "X" => 10,   "IX" => 9,   "V" => 5,   "IV" => 4,
          "I" => 1}

  number=0
  i = 0
  roman = roman.upcase.each_char.to_a

  while i < roman.length
  	return "Invalid roman numeral" if !numb[roman[i]]

    if !roman[i+1]
      number += numb[roman[i]]
      i += 1
    elsif !(numb[roman[i]+roman[i+1]])
      number += numb[roman[i]]
      i += 1
    else
      number += numb[roman[i]+roman[i+1]]
      i += 2
    end
  end

  number
end