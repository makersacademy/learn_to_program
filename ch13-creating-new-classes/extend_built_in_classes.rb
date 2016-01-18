class Array
  def shuffle
    rec_shuffle(self, [])
  end

  def rec_shuffle arr, shuffled 
    unshuffled = []
    selected = rand(arr.length)
    (0...arr.length).each { |i|
      i == selected ? (shuffled << arr[i]) : (unshuffled << arr[i])
    }
    return shuffled if unshuffled == []
    rec_shuffle(unshuffled, shuffled)
  end
end

class Integer
  def factorial
    raise if self < 0
    return 1 if self == 1
    (self - 1).factorial * self
  end

  def to_roman
    numerals = [[1000, "M"], [500, "D"], [100, "C"], [50, "L"],
      [10, "X"], [5, "V"], [1, "I"]]
    num = self
    numerals.map { |numeral|
      multi = num / numeral[0]
      num -= (numeral[0] * multi)
      numeral[1] * multi
    }.join('')
  end
end
