class Integer
  def factorial
    if self < 0
      return "You can't take the factorial of a negative number!"
    end
    if self <= 1
      1
    else
      self * (self - 1).factorial
    end
  end


  def roman_numeral
    #makes an array to store letters in
    romanised_number = []

    #how many of each number type to translate
    thousands = self / 1000
    hundreds = self % 1000 / 100
    tens = self % 100 / 10
    units = self % 10

    #pushing correct translations for each number type to array
    romanised_number.push ("M" * thousands)

    if hundreds == 9
      romanised_number.push ("CM")
    elsif hundreds == 4
      romanised_number.push ("CD")
    else
      romanised_number.push ("D" *  (self % 1000 / 500))
      romanised_number.push ("C" *  (self % 500 / 100))
    end
    if tens == 9
      romanised_number.push ("XC")
    elsif tens == 4
      romanised_number.push ("XL")
    else
      romanised_number.push ("L" *  (self % 100 / 50))
      romanised_number.push ("X" *  (self % 50 / 10))
    end
    if units == 9
      romanised_number.push ("IX")
    elsif units == 4
      romanised_number.push ("IV")
    else
      romanised_number.push ("V" *  (self % 10 / 5))
      romanised_number.push ("I" *  (self % 5))
    end
    #gives array as string
    return romanised_number.join
  end

end

class Array
  def shuffle
    #somewhere to put the shuffled values
    shuffled_array = []
    counter = 1
    until self.empty?
      #get value out of array
      item_being_shuffled = self.pop
      #insert value into array at random index
      shuffled_array.insert(rand(counter), item_being_shuffled)
      counter += 1
    end
    shuffled_array
  end
end