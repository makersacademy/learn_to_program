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


  def to_roman
    num = self
    romanised_number = []
    romanised_number.push ('M' * (num/1000))
    num = num % 1000
    romanised_number.push ("D" * (num/500))
    num = num % 500
    romanised_number.push ("C" * (num/100))
    num = num % 100
    romanised_number.push ("L" * (num/50))
    num = num % 50
    romanised_number.push ("X" * (num/10))
    num = num % 10
    romanised_number.push ("V" * (num/5))
    num = num % 5
    romanised_number.push ("I" * (num/1))
    romanised_number = romanised_number.join("")
    return romanised_number
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