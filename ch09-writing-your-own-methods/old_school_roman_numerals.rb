def old_roman_numeral num
  # your code here
  letters = {M:1000,D:500, C:100,L: 50,X: 10,V: 5,I: 1}
  nb_digits_roman = []
  result = ""

  letters.values.each do |value|
    remainder = num / value
    num -= remainder*value
    nb_digits_roman << remainder
  end

  letters.keys.each_with_index do |key,index|
    result += key.to_s * nb_digits_roman[index]
  end
  result
end