def roman_to_integer roman
  digit_vals = {'i' => 1, 'v' => 5, 'x' => 10, 'l' => 50, 'c' => 100, 'd' => 500, 'm' => 1000}

  total = 0
  prev = 0
  index = roman.length - 1

  while index >= 0
    c = roman[index].downcase
    index = index - 1
    val = digit_vals[c]
    if !val
      puts "This is not a valid roman numeral!"
      return
    end
    if val < prev
      val = val * -1
    else
      prev = val
    end
    total += val
  end
  total
end






#
# def roman_to_integer roman
#   hash = {"M"=>1000, "D"=>500, "C"=>100, "L"=>50, "X"=>10, "IX"=>9, "V"=>5, "IV"=>4, "I"=>1}
#   num = 0
#
#
#   array = roman.upcase.chars
#   array.each_with_index do |item, index|
#     num += 1000 if item == "M"
#     num += 500 if item == "D"
#     num += 50 if item == "L"
#     num += 5 if item == "V"
#
#     if item == "C" && array[index+1] == "M" || array[index+1] == "D" && array[index+1] != array[0]
#       num -= 100
#     elsif item == "C"
#       num += 100
#     end
#
#     if item == "X" && array[index+1] == "C" || array[index+1] == "L" && array[index+1] != array[0]
#       num -= 10
#     elsif item == "X"
#       num += 10
#     end
#
#     if item == "I" && array[index+1] == "X" || array[index+1] == "V" && array[index+1] != array[0]
#       num -= 1
#     elsif item == "I"
#       num += 1
#     end
#   end
#   num
# end
