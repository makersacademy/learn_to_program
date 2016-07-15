class Array
  def shuffle
    sort_by{rand}
  end
end

  class Integer
    def factorial
          raise 'Negative integer' if self < 0
          (self <= 1) ? 1 : self * (self-1).factorial
    end
    def to_roman
      raise 'Positive integer' if self < 0
      roman = ''
      roman << 'M' * (self / 1000)
      roman << 'D' * (self % 1000 / 500)
      roman << 'C' * (self % 500 / 100)
      roman << 'L' * (self % 100 / 50)
      roman << 'X' * (self % 50 / 10)
      roman << 'V' * (self % 10 / 5)
      roman << 'I' * (self % 5 / 1)
      roman
    end
  end
#end

puts 7.to_roman
