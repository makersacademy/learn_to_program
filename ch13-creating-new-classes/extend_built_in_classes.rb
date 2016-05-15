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

  def roman_numeral

  num = self
  old_roman = ""

  while num > 0
    if num >= 1000
      num = num - 1000
      old_roman << "M"
    elsif num >= 900
      num = num - 900
      old_roman << "CM"
    elsif num >= 500
      num = num - 500
      old_roman << "D"
    elsif num >= 400
      num = num - 400
      old_roman >> "CD"
    elsif num >= 100
      num = num - 100
      old_roman << "C"
    elsif num >= 90
      num = num - 90
      old_roman << "XC"
    elsif num >= 50
      num = num - 50
      old_roman << "L"
    elsif num >= 40
      num = num - 40
      old_roman << "XL"
    elsif num >= 10
      num = num - 10
      old_roman << "X"
    elsif num >= 9
      num = num - 9
      old_roman << "IX"
    elsif num >= 5
      num = num - 5
      old_roman << "V"
    elsif num >= 4
      num = num - 4
      old_roman << "IV"
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