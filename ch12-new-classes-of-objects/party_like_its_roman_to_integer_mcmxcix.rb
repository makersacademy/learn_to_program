def roman_to_integer roman
  # your code here
  roman = roman.upcase
  # first need to validate whether it is a valid roman numeral
  roman_pattern = /^M{0,4}(CM|CD|D?C{0,3})(XC|XL|L?X{0,3})(IX|IV|V?I{0,3})$/
  return "Not a valid Roman numeral!" unless roman=~ roman_pattern

  # then start converting it to numbers
  result = 0

  roman.chars.each_with_index do |roman_digit,index|
    if roman_digit == "M"
      result += 1000
    elsif roman_digit == "D"
      result += 500
    elsif roman_digit == "C"
      if roman.chars[index+1] == "M" || roman.chars[index+1] == "D"
        result -= 100
      else
        result += 100
      end
    elsif roman_digit == "L"
      result += 50
    elsif roman_digit == "X"
      if roman.chars[index+1] == "C" || roman.chars[index+1] == "L"
        result -= 10
      else
        result += 10
      end
    elsif roman_digit == "V"
      result += 5
    elsif roman_digit == "I"
      if roman.chars[index+1] == "X" || roman.chars[index+1] == "V"
        result -= 1
      else
        result += 1
      end
    end
  end
  return result
end


