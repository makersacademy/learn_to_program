class Integer

  def factorial
    if self <= 1
      1
    else
      self * (self-1).factorial
    end
  end


  def to_roman
    roman_array = ["I", "V", "X", "L", "C", "D", "M"]
      to_roman = ""
       to_roman << roman_array[6] * (self / 1000)
       to_roman << roman_array[5] * (self % 1000/ 500)
       to_roman << roman_array[4] * (self % 500/ 100)
       to_roman << roman_array[3] * (self % 100/ 50)
       to_roman << roman_array[2] * (self % 50 / 10)
       to_roman << roman_array[1] * (self % 10 / 5)
       to_roman << roman_array[0] * (self % 5 / 1)
       to_roman
    end

end
