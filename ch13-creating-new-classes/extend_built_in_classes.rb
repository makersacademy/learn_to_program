class Integer

  def factorial
    return 'You can\'t take the factorial of a negative number!' if self < 0
    self <= 1 ? 1 : self * ((self - 1).factorial)
  end

  def to_roman
    numerals = [[1000, "M"],
                [500, "D"],
                [100, "C"],
                [50, "L"],
                [10, "X"],
                [5, "V"],
                [1, "I"]]

    num = self
    roman = ""
    return "nulla" if num == 0
    numerals.each do |n|
      while num >= n[0]
        roman += n[1]
        num -= n[0]
      end
    end
    roman
  end

end
