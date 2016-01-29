class Array
  def shuffle
    arr = self
  return arr if arr.length <= 1

  shuffle_array = []

  while arr.length > 1
  shuffle_array << arr.delete_at(rand(arr.length-1))
  end
  shuffle_array += arr

  end
end

class Integer

def factorial
  return 1 if self == 0
  self * (self - 1).factorial
end

  def to_roman
    number = ""
    num = self
    (num/1000).times do number << "M" end
      num = num % 1000
    (num/500).times do number << "D" end
      num = num % 500
    (num/100).times do number << "C" end
      num = num % 100
    (num/50).times do number << "L" end
      num = num % 50
      (num/10).times do number << "X" end
        num = num % 10
        (num/5).times do number << "V" end
          num = num % 5
        num.times do number << "I" end
      number
  end

end
