def old_roman_numeral num
  # your code here
  letters = { M:1000,D:500, C:100,L: 50,X: 10,V: 5,I: 1 }
  result = ""

  letters.values.each_with_index do |value,index|
    digit = num / value
    result += letters.keys[index].to_s*digit
    num -= digit*value
  end
  result
end