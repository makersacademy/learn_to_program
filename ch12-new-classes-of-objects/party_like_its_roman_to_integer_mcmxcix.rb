def roman_to_integer roman
  roman = roman.upcase
  roman_numerals = {
    "M" => 1000,
    "CM" => 900,
    "D" => 500,
    "CD" => 400,
    "C" => 100,
    "XC" => 90,
    "L" => 50,
    "XL" => 40,
    "X" => 10,
    "IX" => 9,
    "V" => 5,
    "IV" => 4,
    "I" => 1
  }

  number = 0
  count = 0

  until count == roman.length
    current_letter = roman[count]
    double_check = roman[count].to_s + roman[count+1].to_s
    if roman_numerals.include?(current_letter) == false
      return "Please enter valid roman numerals"
    elsif double_check.length == 2 && roman_numerals[double_check].to_i > 1
      number = number + roman_numerals[double_check].to_i
      count += 1
    else
      number = number + roman_numerals[current_letter].to_i
    end
    count += 1
  end

  number
end

puts roman_to_integer "IVCDXDD"
