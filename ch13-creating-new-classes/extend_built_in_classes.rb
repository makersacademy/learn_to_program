class Integer
  # your code here
  def to_roman_proper
  # your code here
    def roman_with_subtraction(letter, number)                                                  #knowing that the number can only range from 1 to 9, return the right combination of roman numerals
        roman_array = ["M","D","C","L","X","V","I"]
        return letter + roman_array[(roman_array.index(letter) - 2)] if number == 9              #if the number passed is 9, the numeral is given by the letter passed, plus the one two spots on its left ex. CM for 900
        return letter + roman_array[(roman_array.index(letter) - 1)] if number == 4              #if the number passed is 4, the numeral is given by the letter passed, plus the one on its left ex. IV for 4
        return roman_array[(roman_array.index(letter) - 1)] + (letter * (number % 5)) if number >= 5   #if the number is larger or equal to 5, it returns one instance of the letter on the left (V,L,D)
        return letter * number if number < 4                                                           #plus the letter that was passed, multiplied by the rest of the units
    end
  
    num_to_roman = { "M" => self / 1000,                                                        #gets the units for each of the main numerals (excluding the fives (V,L,D) as they'll get computed in "roman_with_subtracion"
        "C" => (self % 1000) / 100,
        "X" => (self % 100) / 10,
        "I" => self % 10}
  
    roman = ("M" * num_to_roman["M"])                                                           #this is an exception, as it's the biggest number in this scale, and there is no letter on the left in the array
  
    num_to_roman.each {|letter, number| roman << roman_with_subtraction(letter, number) unless letter == "M"} #the number passed can range from 1 to 9, it returns the letter combination for each order of magnitude, and push it in the string
  
    roman                   #string with the roman numeral 
  end
  
  
  def factorial
      return 1 if self == 0
      sum = 1
      for i in 1..self
        sum *= i
    end
      
      sum
  end
  
  def to_roman
    # your code here
  
    m = self / 1000
    d = (self % 1000) / 500
    c = (self % 500) / 100
    l = (self % 100) / 50
    x = (self % 50) / 10
    v = (self % 10) / 5
    i = self % 5
  
    roman = ("M" * m) + ("D" * d) + ("C" * c) + ("L" * l) + ("X" * x) + ("V" * v) + ("I" * i)
  
  
    end
  
end