def roman_numeral num
  # your code here
  def roman_with_subtraction(letter, number)
     roman_array = ["M","D","C","L","X","V","I"]
     return letter + roman_array[(roman_array.index(letter) - 2)] if number == 9
     return letter + roman_array[(roman_array.index(letter) - 1)] if number == 4
     return roman_array[(roman_array.index(letter) - 1)] + (letter * (number % 5)) if number >= 5
     return letter * number if number < 4
  end
  
  num_to_roman = { "M" => num.to_i / 1000,
    "C" => (num % 1000) / 100,
    "X" => (num % 100) / 10,
    "I" => num % 10}
  
  roman = ("M" * num_to_roman["M"]) 
  
  num_to_roman.each {|letter, number| roman << roman_with_subtraction(letter, number) unless letter == "M"}
  
  roman
end