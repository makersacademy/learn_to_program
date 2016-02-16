class Integer
  def factorial
    return 1 if self == 1
    (self- 1).factorial * self
  end

  def to_roman
    num = self
    remainder_1000 = num % 1000
    remainder_500 = num % 500
    remainder_100 = num % 100
    remainder_50 = num % 50
    remainder_10 = num % 10
    remainder_5 = num % 5
    result = ""
    result << "M"*(num / 1000)
    result <<  "D"*(remainder_1000/500)
    result <<  "C"* (remainder_500/100)
    result <<  "L"*(remainder_100/50)
    result <<  "X"*(remainder_50/10)
    result <<  "V"*(remainder_10/5)
    result <<  "I"*(remainder_5)
  end
end
