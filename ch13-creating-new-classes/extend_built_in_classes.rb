class Integer
  def to_roman
    # r = ''
    # r += 'M' * (self / 1000)
    # r += self % 1000 > 899 ? 'CL' : 'D' * (self % 1000 / 500)
    # r += self % 1000 > 899 ? '' : self % 500 > 449 ? 'CD' : 'C' * (self % 500 / 100)
    # r += self % 100 > 89 ? 'XC' : 'L' * (self % 100 / 50)
    # r += self % 100 > 89 ? '' : self % 50 > 39 ? 'XL' : 'X' * (self % 50 / 10)
    # r += self % 10 > 8 ? 'IX' : 'V' * (self % 10 / 5)
    # r += self % 10 > 8 ? '' : self % 5 > 3 ? 'IV' : 'I' * (self % 5)
    # r
    'M' * (self/1000) + 'D' * (self % 1000 / 500) + 'C' * (self % 500 / 100) + 'L' * (self % 100 / 50) + 'X' * (self % 50 / 10) + 'V' * (self % 10 / 5) + 'I' * (self % 5)
  end
end