class Integer
  def factorial
    return 1 if self == 0 || self == 1
    self * (self - 1).factorial
  end

  def to_roman
    to_return = ""
    to_write = self
    letters = [[1000, "M"], [500, "D"], [100, "C"], [50, "L"], [10, "X"], [5, "V"], [1, "I"]]

    while to_write != 0
      letters.each do |value|
        to_return << value[1] * (to_write / value[0])
        to_write = to_write % value[0]
      end
    end
    to_return
  end
end

class Array
  def shuffle
    to_return = []
    while self != []
      random_index = rand(self.length)
      to_return << self[random_index]
      self.delete_at(random_index)
    end
    to_return
  end
end