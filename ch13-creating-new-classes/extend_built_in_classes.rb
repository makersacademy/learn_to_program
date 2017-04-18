class Integer

  def factorial
    if self < 0
      return "You can't take the factorial of a negative number!"
    end

    if self <= 1
      1
    else
      self * (self -1).factorial
    end
  end

  def to_roman

  num = self
  old_roman = ""

  while num > 0
    if num >= 1000
      num = num - 1000
      old_roman << "M"
    elsif num >= 500
      num = num - 500
      old_roman << "D"
    elsif num >= 100
      num = num - 100
      old_roman << "C"
    elsif num >= 50
      num = num - 50
      old_roman << "L"
    elsif num >= 10
      num = num - 10
      old_roman << "X"
    elsif num >= 5
      num = num - 5
      old_roman << "V"
    else num = num - 1
      old_roman << "I"
    end
  end
  old_roman
end
end

class Array
  def shuffle

  arr = self
  randomised = []

  while arr.length > 0
    randomised << arr[rand(arr.length)]
    arr = arr - randomised
  end
   randomised
end
end