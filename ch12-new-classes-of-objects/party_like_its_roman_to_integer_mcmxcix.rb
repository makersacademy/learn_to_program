def roman_to_integer roman
  roman_nums = {
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


roman = roman.upcase.split(//)
num = 0

roman.each_with_index do |val, index|
  
  if index + 1 < roman.length && roman_nums.has_key?(val + roman[index + 1])
      num = num + roman_nums[val + roman[index + 1]]
  elsif roman_nums.has_key?(val)
    next if roman_nums.has_key?(roman[index - 1] + val) && index - 1 >= 0 
    num = num + roman_nums[val]
  else
    return "Error"
  end
  end
  return num
end



#roman_nums.each do |letter, number|
    
 #   if roman[0] == letter
  #      intergers << number
   #     roman = roman[0].delete
#    end
 #   roman_to_interger roman
 # end
