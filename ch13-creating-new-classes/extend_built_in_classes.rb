class Integer
  def factorial
     if self == 0 || self == 1
        return 1
     else
        return self * (self - 1).factorial
     end
  end

  def to_roman
     m = self / 1000
     d = (self - 1000 * m) / 500
     c = (self - 1000 * m - 500 * d) / 100
     l = (self - 1000 * m - 500 * d - 100 * c) / 50
     x = (self - 1000 * m - 500 * d - 100 * c - 50 * l) / 10
     v = (self - 1000 * m - 500 * d - 100 * c - 50 * l - 10 * x) / 5
     i = (self - 1000 * m - 500 * d - 100 * c - 50 * l - 10 * x - v * 5)
     "M" * m + "D" * d + "C" * c + "L" * l + "X" * x + "V" * v + "I" * i
  end
end

p 5.factorial
p 12.to_roman
p 562.to_roman
