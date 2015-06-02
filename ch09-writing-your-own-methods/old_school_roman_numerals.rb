def old_roman_numeral num
  numerals = ""

  numbers = [1000,500,100,50,10,5,1]
  letters = ["M","D","C","L","X","V","I"]

  numbers.each_with_index do |x,i|
    amount = num / x
    numerals += letters[i] * amount
    num -= amount * x
  end
  numerals
end

puts old_roman_numeral(1999)