def roman_to_integer roman
  return 0 if roman == ''
  thousands = 0
  hundreds  = 0
  tens      = 0
  ones      = 0

  while roman != ""
    if roman[0] == "M".downcase
      thousands += 1
      roman[0] = ''
    elsif roman[0..1] == "CM".downcase
      hundreds += 9
      roman [0..1] = ''
    elsif roman[0..1] == "CD".downcase
      hundreds += 4
      roman[0..1] = ''
    elsif roman[0] == "D".downcase
      hundreds += 5
      roman[0] = ''
    elsif roman[0] == "C".downcase
      hundreds += 1
      roman[0] = ''
    elsif roman[0..1] == "XC".downcase
      tens += 9
      roman[0..1] = ''
    elsif roman[0..1] == "XL".downcase
      tens += 4
      roman[0..1] = ''
    elsif roman[0] == "L".downcase
      tens += 5
      roman[0] = ''
    elsif roman[0] == "X".downcase
      tens += 1
      roman[0] = ''
    elsif roman[0..1] == "IX".downcase
      ones += 9
      roman[0..1] = ''
    elsif roman[0..1] == "IV".downcase
      ones += 4
      roman[0..1] = ''
    elsif roman[0] == "V".downcase
      ones += 5
      roman[0] = ''
    elsif roman[0] == "I".downcase
      ones += 1
      roman[0] = ''
    end
  end
  return (thousands * 1000) + (hundreds * 100) + (tens * 10) + ones
end
